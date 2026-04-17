import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/consultation_service.dart';
import '../../auth/providers/auth_provider.dart';

/// All consultations belonging to the currently-logged-in patient.
final patientConsultationsProvider =
    StreamProvider.autoDispose<List<Map<String, dynamic>>>((ref) {
  final info = ref.watch(currentUserInfoProvider);
  final uid = info.uid;
  if (uid == null) return Stream.value(const []);
  return ConsultationService().watchPatientConsultations(uid);
});

/// Live stream of a single consultation (patient view).
/// Emits null until Firestore produces the doc.
final consultationDetailProvider = StreamProvider.autoDispose
    .family<Map<String, dynamic>?, String>((ref, consultationId) {
  final info = ref.watch(currentUserInfoProvider);
  final uid = info.uid;
  if (uid == null) return Stream.value(null);
  return ConsultationService()
      .watchPatientConsultations(uid)
      .map((list) {
    for (final c in list) {
      if (c['id'] == consultationId) return c;
    }
    return null;
  });
});
