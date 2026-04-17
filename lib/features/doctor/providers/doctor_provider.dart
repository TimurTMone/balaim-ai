import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/data/doctors_data.dart';
import '../../../core/services/consultation_service.dart';
import '../../../shared/models/consultation.dart' show DoctorProfile;
import '../../auth/providers/auth_provider.dart';

/// Resolves the "which doctor am I?" question for the logged-in user.
///
/// Resolution order:
/// 1. If logged-in auth uid matches a DoctorsData uid → that doctor.
/// 2. If demo user is a doctor → first accepting doctor (Jane Mone) for demos.
/// 3. Null otherwise.
final currentDoctorUidProvider = Provider<String?>((ref) {
  final info = ref.watch(currentUserInfoProvider);
  if (info.uid != null && DoctorsData.byUid(info.uid!) != null) {
    return info.uid;
  }
  final demo = ref.watch(currentDemoUserProvider);
  if (demo?.isDoctor == true) {
    final accepting = DoctorsData.accepting();
    if (accepting.isNotEmpty) return accepting.first.uid;
  }
  return null;
});

/// Doctor profile for the currently logged-in doctor (if any).
final currentDoctorProfileProvider = Provider<DoctorProfile?>((ref) {
  final uid = ref.watch(currentDoctorUidProvider);
  if (uid == null) return null;
  return DoctorsData.byUid(uid);
});

/// Flat display record for a case card & CaseReviewScreen.
/// Promotes intake fields to top level so the existing case UI (written against
/// a flat map) works unchanged against real Firestore documents.
Map<String, dynamic> _flattenCase(Map<String, dynamic> doc) {
  final intake = (doc['intake'] as Map?)?.cast<String, dynamic>() ?? const {};
  final labs = (intake['labResultUrls'] as List?) ?? const [];
  final photos = (intake['photoUrls'] as List?) ?? const [];
  return {
    ...doc,
    // Intake fields promoted to top-level for the existing flat UI.
    'patientName': intake['patientName'],
    'patientAge': intake['patientAge'],
    'patientSex': intake['patientSex'],
    'relationship': intake['relationship'],
    'mainConcern': intake['mainConcern'],
    'symptomDetails': intake['symptomDetails'],
    'symptomDuration': intake['symptomDuration'],
    'whatTriedSoFar': intake['whatTriedSoFar'],
    'currentMedications': (intake['currentMedications'] as List?)?.join(', '),
    'medicalHistory': intake['medicalHistory'],
    'allergies': intake['allergies'],
    'surgicalHistory': intake['surgicalHistory'],
    'familyHistory': intake['familyHistory'],
    'additionalNotes': intake['additionalNotes'],
    'pregnancyWeek': intake['pregnancyWeek'],
    'babyAgeMonths': intake['babyAgeMonths'],
    'labResultUrls': labs,
    'photoUrls': photos,
    'hasLabResults': labs.isNotEmpty,
    'hasPhotos': photos.isNotEmpty,
  };
}

/// Live queue of pending (submitted / inReview / followUpAsked) cases
/// for the currently logged-in doctor.
final doctorQueueProvider = StreamProvider.autoDispose<List<Map<String, dynamic>>>((ref) {
  final doctorUid = ref.watch(currentDoctorUidProvider);
  if (doctorUid == null) return Stream.value(const []);
  return ConsultationService()
      .watchDoctorQueue(doctorUid)
      .map((list) => list.map(_flattenCase).toList());
});

/// Live stream of completed cases (for stats + history).
final doctorCompletedProvider = StreamProvider.autoDispose<List<Map<String, dynamic>>>((ref) {
  final doctorUid = ref.watch(currentDoctorUidProvider);
  if (doctorUid == null) return Stream.value(const []);
  return ConsultationService()
      .watchDoctorCompleted(doctorUid)
      .map((list) => list.map(_flattenCase).toList());
});
