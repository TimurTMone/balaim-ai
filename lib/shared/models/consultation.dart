// Async telemedicine consultation model.
//
// Design: async-first, structured intake, clear status progression,
// 1 follow-up included, HIPAA-mindful data model.

enum ConsultationStatus {
  draft('Draft', 'You haven\'t submitted yet'),
  submitted('Submitted', 'Waiting for doctor to review'),
  inReview('In Review', 'Doctor is reviewing your case'),
  answered('Answered', 'Doctor has responded'),
  followUpAsked('Follow-up Sent', 'You asked a follow-up question'),
  followUpAnswered('Complete', 'Consultation complete'),
  closed('Closed', 'This consultation is closed');

  const ConsultationStatus(this.label, this.description);
  final String label;
  final String description;
}

enum ConsultationUrgency {
  routine('Routine', 'Not urgent, respond within 48 hours'),
  soon('Soon', 'Please respond within 24 hours'),
  urgent('Urgent', 'Please respond within 12 hours');

  const ConsultationUrgency(this.label, this.description);
  final String label;
  final String description;
}

enum SpecialtyType {
  endocrinology('Endocrinology', 'Hormones, thyroid, diabetes, metabolism'),
  pediatricSurgery('Pediatric Surgery', 'Surgical conditions in children'),
  pediatrics('Pediatrics', 'General child health'),
  obGyn('OB-GYN', 'Pregnancy, reproductive health'),
  lactation('Lactation', 'Breastfeeding support'),
  dermatology('Dermatology', 'Skin conditions'),
  mentalHealth('Mental Health', 'Postpartum depression, anxiety'),
  nutrition('Nutrition', 'Diet, meal planning, food allergies');

  const SpecialtyType(this.label, this.description);
  final String label;
  final String description;
}

/// The consultation request — what the parent submits.
class Consultation {
  final String id;
  final String patientUid;
  final String? doctorUid;
  final String? doctorName;
  final SpecialtyType specialty;
  final ConsultationStatus status;
  final ConsultationUrgency urgency;
  final DateTime createdAt;
  final DateTime? answeredAt;
  final DateTime? closedAt;

  // INTAKE — structured data the doctor needs
  final PatientIntake intake;

  // RESPONSE — doctor's assessment
  final DoctorResponse? response;

  // FOLLOW-UP — one round included
  final String? followUpQuestion;
  final String? followUpAnswer;

  // PAYMENT
  final double pricePaid;
  final String currency;
  final String? paymentId;

  const Consultation({
    required this.id,
    required this.patientUid,
    this.doctorUid,
    this.doctorName,
    required this.specialty,
    required this.status,
    required this.urgency,
    required this.createdAt,
    this.answeredAt,
    this.closedAt,
    required this.intake,
    this.response,
    this.followUpQuestion,
    this.followUpAnswer,
    required this.pricePaid,
    this.currency = 'USD',
    this.paymentId,
  });

  bool get canAskFollowUp =>
      status == ConsultationStatus.answered && followUpQuestion == null;

  bool get isComplete =>
      status == ConsultationStatus.followUpAnswered ||
      status == ConsultationStatus.closed;

  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'patientUid': patientUid,
      'doctorUid': doctorUid,
      'doctorName': doctorName,
      'specialty': specialty.name,
      'status': status.name,
      'urgency': urgency.name,
      'createdAt': createdAt.toIso8601String(),
      'answeredAt': answeredAt?.toIso8601String(),
      'closedAt': closedAt?.toIso8601String(),
      'intake': intake.toMap(),
      'response': response?.toMap(),
      'followUpQuestion': followUpQuestion,
      'followUpAnswer': followUpAnswer,
      'pricePaid': pricePaid,
      'currency': currency,
      'paymentId': paymentId,
    };
  }
}

/// Structured patient intake — gives doctor everything needed.
class PatientIntake {
  // WHO
  final String patientName;
  final int patientAge;
  final String patientSex;
  final String? relationship; // "self", "my child", "my partner"

  // WHAT'S WRONG
  final String mainConcern;
  final String symptomDetails;
  final String symptomDuration;

  // WHAT THEY'VE TRIED
  final String whatTriedSoFar;
  final List<String> currentMedications;

  // HISTORY
  final String medicalHistory;
  final String? allergies;
  final String? surgicalHistory;
  final String? familyHistory;

  // ATTACHMENTS
  final List<String> labResultUrls;
  final List<String> photoUrls;
  final String? additionalNotes;

  // FOR PREGNANCY/BABY CONTEXT
  final int? pregnancyWeek;
  final int? babyAgeMonths;

  const PatientIntake({
    required this.patientName,
    required this.patientAge,
    required this.patientSex,
    this.relationship,
    required this.mainConcern,
    required this.symptomDetails,
    required this.symptomDuration,
    required this.whatTriedSoFar,
    required this.currentMedications,
    required this.medicalHistory,
    this.allergies,
    this.surgicalHistory,
    this.familyHistory,
    required this.labResultUrls,
    required this.photoUrls,
    this.additionalNotes,
    this.pregnancyWeek,
    this.babyAgeMonths,
  });

  Map<String, dynamic> toMap() => {
        'patientName': patientName,
        'patientAge': patientAge,
        'patientSex': patientSex,
        'relationship': relationship,
        'mainConcern': mainConcern,
        'symptomDetails': symptomDetails,
        'symptomDuration': symptomDuration,
        'whatTriedSoFar': whatTriedSoFar,
        'currentMedications': currentMedications,
        'medicalHistory': medicalHistory,
        'allergies': allergies,
        'surgicalHistory': surgicalHistory,
        'familyHistory': familyHistory,
        'labResultUrls': labResultUrls,
        'photoUrls': photoUrls,
        'additionalNotes': additionalNotes,
        'pregnancyWeek': pregnancyWeek,
        'babyAgeMonths': babyAgeMonths,
      };
}

/// Doctor's structured response.
class DoctorResponse {
  final String assessment;
  final String recommendations;
  final String? prescriptionNotes;
  final List<String> followUpTests;
  final String? referralNote;
  final String whenToSeekEmergencyCare;
  final String disclaimer;

  const DoctorResponse({
    required this.assessment,
    required this.recommendations,
    this.prescriptionNotes,
    required this.followUpTests,
    this.referralNote,
    required this.whenToSeekEmergencyCare,
    this.disclaimer =
        'This assessment is based on the information provided and does not replace an in-person examination. '
        'If symptoms worsen or you have concerns, please visit your local healthcare provider or emergency room.',
  });

  Map<String, dynamic> toMap() => {
        'assessment': assessment,
        'recommendations': recommendations,
        'prescriptionNotes': prescriptionNotes,
        'followUpTests': followUpTests,
        'referralNote': referralNote,
        'whenToSeekEmergencyCare': whenToSeekEmergencyCare,
        'disclaimer': disclaimer,
      };
}

/// Doctor profile for the platform.
class DoctorProfile {
  final String uid;
  final String fullName;
  final String title; // "NP", "MD", "Professor"
  final SpecialtyType specialty;
  final String bio;
  final String location;
  final List<String> languages;
  final List<String> credentials;
  final double consultationPrice;
  final String currency;
  final String responseTime; // "within 24 hours"
  final double rating;
  final int reviewCount;
  final int consultationCount;
  final bool isVerified;
  final bool isAcceptingPatients;

  const DoctorProfile({
    required this.uid,
    required this.fullName,
    required this.title,
    required this.specialty,
    required this.bio,
    required this.location,
    required this.languages,
    required this.credentials,
    required this.consultationPrice,
    this.currency = 'USD',
    required this.responseTime,
    required this.rating,
    required this.reviewCount,
    required this.consultationCount,
    required this.isVerified,
    required this.isAcceptingPatients,
  });

  String get priceFormatted => '\$$consultationPrice';
}
