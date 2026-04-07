import '../../shared/models/consultation.dart';

/// Founding doctors on the Balam.AI platform.
class DoctorsData {
  DoctorsData._();

  static const doctors = <DoctorProfile>[
    DoctorProfile(
      uid: 'doctor-jane-mone',
      fullName: 'Jane Mone, NP',
      title: 'Nurse Practitioner',
      specialty: SpecialtyType.endocrinology,
      bio:
          'Nurse Practitioner specializing in endocrinology. '
          'Former child dentist trained at the Medical Academy of Kyrgyzstan, '
          'Jane became a Nurse Practitioner in the United States at age 55 — '
          'proving it\'s never too late to grow. She brings a unique perspective '
          'combining Kyrgyz and American medical training, with deep empathy '
          'for mothers navigating complex health decisions.',
      location: 'New Jersey, USA',
      languages: ['English', 'Russian', 'Kyrgyz'],
      credentials: [
        'Nurse Practitioner (NP), State of New Jersey',
        'Endocrinology Specialty',
        'Former Child Dentist — Medical Academy, Kyrgyzstan',
        'Trilingual: English, Russian, Kyrgyz',
      ],
      consultationPrice: 200,
      currency: 'USD',
      responseTime: 'Within 24-48 hours',
      rating: 5.0,
      reviewCount: 0,
      consultationCount: 0,
      isVerified: true,
      isAcceptingPatients: true,
    ),
    DoctorProfile(
      uid: 'doctor-uzakbaev',
      fullName: 'Prof. Kamchybek Uzakbaev',
      title: 'Professor, Doctor of Medical Sciences',
      specialty: SpecialtyType.pediatricSurgery,
      bio:
          'Камчыбек Аскарбекович Узакбаев — one of the most distinguished '
          'pediatric surgeons in Kyrgyzstan. Doctor of Medical Sciences (2002), '
          'Professor (2010), and long-time Director of the National Center for '
          'Maternal and Child Protection. Author of 32+ scientific works and '
          '5 medical inventions. Honored Doctor of the Kyrgyz Republic. '
          'Decades of experience in children\'s surgical care.',
      location: 'Bishkek, Kyrgyzstan',
      languages: ['Kyrgyz', 'Russian'],
      credentials: [
        'Doctor of Medical Sciences (2002)',
        'Professor (2010)',
        'Director, National Center for Maternal and Child Protection',
        'Author of 32+ scientific works, 5 inventions',
        'Honored Doctor of the Kyrgyz Republic',
      ],
      consultationPrice: 150,
      currency: 'USD',
      responseTime: 'Within 48 hours',
      rating: 5.0,
      reviewCount: 0,
      consultationCount: 0,
      isVerified: true,
      isAcceptingPatients: true,
    ),
  ];

  static DoctorProfile? byUid(String uid) {
    try {
      return doctors.firstWhere((d) => d.uid == uid);
    } catch (_) {
      return null;
    }
  }

  static List<DoctorProfile> bySpecialty(SpecialtyType specialty) {
    return doctors.where((d) => d.specialty == specialty).toList();
  }

  static List<DoctorProfile> accepting() {
    return doctors.where((d) => d.isAcceptingPatients).toList();
  }
}

/// What the patient needs to provide for each specialty.
/// This guides the intake form — different specialties need different info.
class IntakeRequirements {
  IntakeRequirements._();

  static List<String> forSpecialty(SpecialtyType type) {
    switch (type) {
      case SpecialtyType.endocrinology:
        return [
          'Recent lab results (blood work, hormone panels)',
          'Current symptoms and when they started',
          'Current medications and supplements',
          'What you\'ve already tried',
          'Detailed medical history',
          'Family history of endocrine conditions',
        ];
      case SpecialtyType.pediatricSurgery:
        return [
          'Description of the condition/concern',
          'Photos of the affected area (if visible)',
          'How long has this been present',
          'Any imaging results (X-ray, ultrasound)',
          'Child\'s age, weight, and medical history',
          'Previous surgeries or treatments',
        ];
      case SpecialtyType.pediatrics:
        return [
          'Child\'s age and weight',
          'Current symptoms and duration',
          'Temperature readings (if fever)',
          'What you\'ve tried so far',
          'Vaccination status',
          'Any allergies',
        ];
      case SpecialtyType.obGyn:
        return [
          'Current pregnancy week (if applicable)',
          'Symptoms and concerns',
          'Recent ultrasound results',
          'Medication list',
          'Obstetric history',
          'Any complications in current/previous pregnancies',
        ];
      case SpecialtyType.lactation:
        return [
          'Baby\'s age and weight',
          'Feeding pattern (frequency, duration)',
          'Specific concern (latch, supply, pain)',
          'What you\'ve tried so far',
          'Baby\'s diaper output (wet/dirty count)',
          'Any medications or supplements',
        ];
      case SpecialtyType.dermatology:
        return [
          'Clear photos of the affected area',
          'When it first appeared',
          'Has it changed (spreading, color change)',
          'Any itching, pain, or discharge',
          'Products used on the area',
          'Allergy history',
        ];
      case SpecialtyType.mentalHealth:
        return [
          'How you\'ve been feeling (describe in your own words)',
          'How long you\'ve felt this way',
          'Sleep quality and patterns',
          'Support system (partner, family, friends)',
          'Any previous mental health treatment',
          'Current medications',
        ];
      case SpecialtyType.nutrition:
        return [
          'Current diet overview',
          'Specific goals or concerns',
          'Any food allergies or intolerances',
          'Baby\'s age (if about baby nutrition)',
          'Current feeding method (breast, formula, solids)',
          'Any digestive issues',
        ];
    }
  }
}
