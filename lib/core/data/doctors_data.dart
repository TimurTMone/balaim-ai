import '../../shared/models/consultation.dart';
import '../l10n/content_localizations.dart';

/// Founding doctors on the Balam.AI platform.
class DoctorsData {
  DoctorsData._();

  static const doctors = <DoctorProfile>[
    DoctorProfile(
      uid: 'doctor-jane-mone',
      fullName: 'Jane Mone, NP',
      title: L3(
        en: 'Nurse Practitioner',
        ru: 'Практикующая медсестра',
        ky: 'Практикалык медайым',
      ),
      specialty: SpecialtyType.endocrinology,
      bio: L3(
        en: 'Nurse Practitioner specializing in endocrinology. '
            'Former child dentist trained at the Medical Academy of Kyrgyzstan, '
            'Jane became a Nurse Practitioner in the United States at age 55 — '
            'proving it\'s never too late to grow. She brings a unique perspective '
            'combining Kyrgyz and American medical training, with deep empathy '
            'for mothers navigating complex health decisions.',
        ru: 'Практикующая медсестра, специализирующаяся на эндокринологии. '
            'Бывший детский стоматолог, обучавшаяся в Медицинской академии Кыргызстана, '
            'Джейн стала практикующей медсестрой в США в 55 лет — '
            'доказав, что расти никогда не поздно. Она привносит уникальный опыт, '
            'сочетающий кыргызское и американское медицинское образование, '
            'с глубоким сочувствием к матерям, принимающим сложные решения о здоровье.',
        ky: 'Эндокринологияга адистешкен практикалык медайым. '
            'Кыргызстандын Медициналык академиясында окуган мурунку балдар тиш дарыгери, '
            'Джейн 55 жашында АКШда практикалык медайым болгон — '
            'өсүү үчүн эч качан кеч эмес экенин далилдеп. Ал кыргыз жана америкалык '
            'медициналык билимди айкалыштырган уникалдуу тажрыйба алып келет, '
            'татаал ден соолук чечимдерин кабыл алып жаткан энелерге терең боорукерлик менен.',
      ),
      location: 'New Jersey, USA',
      languages: ['English', 'Russian', 'Kyrgyz'],
      credentials: [
        L3(en: 'Nurse Practitioner (NP), State of New Jersey', ru: 'Практикующая медсестра (NP), штат Нью-Джерси', ky: 'Практикалык медайым (NP), Нью-Джерси штаты'),
        L3(en: 'Endocrinology Specialty', ru: 'Специализация: эндокринология', ky: 'Адистик: эндокринология'),
        L3(en: 'Former Child Dentist — Medical Academy, Kyrgyzstan', ru: 'Бывший детский стоматолог — Медицинская академия, Кыргызстан', ky: 'Мурунку балдар тиш дарыгери — Медициналык академия, Кыргызстан'),
        L3(en: 'Trilingual: English, Russian, Kyrgyz', ru: 'Трёхъязычная: английский, русский, кыргызский', ky: 'Үч тилдүү: англис, орус, кыргыз'),
      ],
      consultationPrice: 200,
      currency: 'USD',
      responseTime: L3(en: 'Within 24-48 hours', ru: 'В течение 24-48 часов', ky: '24-48 сааттын ичинде'),
      rating: 5.0,
      reviewCount: 0,
      consultationCount: 0,
      isVerified: true,
      isAcceptingPatients: true,
    ),
    DoctorProfile(
      uid: 'doctor-uzakbaev',
      fullName: 'Prof. Kamchybek Uzakbaev',
      title: L3(
        en: 'Professor, Doctor of Medical Sciences',
        ru: 'Профессор, доктор медицинских наук',
        ky: 'Профессор, медицина илимдеринин доктору',
      ),
      specialty: SpecialtyType.pediatricSurgery,
      bio: L3(
        en: 'Kamchybek Askarbekovich Uzakbaev — one of the most distinguished '
            'pediatric surgeons in Kyrgyzstan. Doctor of Medical Sciences (2002), '
            'Professor (2010), and long-time Director of the National Center for '
            'Maternal and Child Protection. Author of 32+ scientific works and '
            '5 medical inventions. Honored Doctor of the Kyrgyz Republic. '
            'Decades of experience in children\'s surgical care.',
        ru: 'Камчыбек Аскарбекович Узакбаев — один из самых выдающихся '
            'детских хирургов Кыргызстана. Доктор медицинских наук (2002), '
            'Профессор (2010), многолетний директор Национального центра '
            'охраны материнства и детства. Автор 32+ научных работ и '
            '5 медицинских изобретений. Заслуженный врач Кыргызской Республики. '
            'Десятилетия опыта в детской хирургической помощи.',
        ky: 'Камчыбек Аскарбекович Узакбаев — Кыргызстандагы эң көрүнүктүү '
            'балдар хирургдарынын бири. Медицина илимдеринин доктору (2002), '
            'Профессор (2010), Эне жана баланы коргоо улуттук борборунун '
            'көп жылдык директору. 32+ илимий эмгектин жана '
            '5 медициналык ойлоп табуунун автору. Кыргыз Республикасынын '
            'Ардактуу дарыгери. Балдар хирургиялык жардамында ондогон жылдык тажрыйба.',
      ),
      location: 'Bishkek, Kyrgyzstan',
      languages: ['Kyrgyz', 'Russian'],
      credentials: [
        L3(en: 'Doctor of Medical Sciences (2002)', ru: 'Доктор медицинских наук (2002)', ky: 'Медицина илимдеринин доктору (2002)'),
        L3(en: 'Professor (2010)', ru: 'Профессор (2010)', ky: 'Профессор (2010)'),
        L3(en: 'Director, National Center for Maternal and Child Protection', ru: 'Директор, Национальный центр охраны материнства и детства', ky: 'Директор, Эне жана баланы коргоо улуттук борбору'),
        L3(en: 'Author of 32+ scientific works, 5 inventions', ru: 'Автор 32+ научных работ, 5 изобретений', ky: '32+ илимий эмгектин, 5 ойлоп табуунун автору'),
        L3(en: 'Honored Doctor of the Kyrgyz Republic', ru: 'Заслуженный врач Кыргызской Республики', ky: 'Кыргыз Республикасынын Ардактуу дарыгери'),
      ],
      consultationPrice: 150,
      currency: 'USD',
      responseTime: L3(en: 'Within 48 hours', ru: 'В течение 48 часов', ky: '48 сааттын ичинде'),
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

  static List<L3> forSpecialty(SpecialtyType type) {
    switch (type) {
      case SpecialtyType.endocrinology:
        return [
          L3(en: 'Recent lab results (blood work, hormone panels)', ru: 'Недавние анализы (крови, гормональные панели)', ky: 'Жакынкы анализдер (кан, гормондук панелдер)'),
          L3(en: 'Current symptoms and when they started', ru: 'Текущие симптомы и когда начались', ky: 'Учурдагы белгилер жана качан башталганы'),
          L3(en: 'Current medications and supplements', ru: 'Текущие лекарства и добавки', ky: 'Учурдагы дары-дармектер жана кошумчалар'),
          L3(en: "What you've already tried", ru: 'Что уже пробовали', ky: 'Эмнелерди мурда сынагансыз'),
          L3(en: 'Detailed medical history', ru: 'Подробная медицинская история', ky: 'Толук медициналык тарых'),
          L3(en: 'Family history of endocrine conditions', ru: 'Семейная история эндокринных заболеваний', ky: 'Үй-бүлөдөгү эндокриндик оорулар тарыхы'),
        ];
      case SpecialtyType.pediatricSurgery:
        return [
          L3(en: 'Description of the condition/concern', ru: 'Описание состояния/проблемы', ky: 'Абалдын/көйгөйдүн сүрөттөмөсү'),
          L3(en: 'Photos of the affected area (if visible)', ru: 'Фото поражённой области (если видно)', ky: 'Таасирленген аймактын сүрөтү (көрүнсө)'),
          L3(en: 'How long has this been present', ru: 'Как давно это присутствует', ky: 'Канча убакыттан бери бар'),
          L3(en: 'Any imaging results (X-ray, ultrasound)', ru: 'Результаты визуализации (рентген, УЗИ)', ky: 'Сүрөттөлүш натыйжалары (рентген, УЗИ)'),
          L3(en: "Child's age, weight, and medical history", ru: 'Возраст, вес ребёнка и медицинская история', ky: 'Баланын жашы, салмагы жана медициналык тарыхы'),
          L3(en: 'Previous surgeries or treatments', ru: 'Предыдущие операции или лечение', ky: 'Мурунку операциялар же дарылоо'),
        ];
      case SpecialtyType.pediatrics:
        return [
          L3(en: "Child's age and weight", ru: 'Возраст и вес ребёнка', ky: 'Баланын жашы жана салмагы'),
          L3(en: 'Current symptoms and duration', ru: 'Текущие симптомы и длительность', ky: 'Учурдагы белгилер жана узактыгы'),
          L3(en: 'Temperature readings (if fever)', ru: 'Показания температуры (если жар)', ky: 'Температура көрсөткүчтөрү (ысык болсо)'),
          L3(en: "What you've tried so far", ru: 'Что уже пробовали', ky: 'Эмнелерди мурда сынадыңыз'),
          L3(en: 'Vaccination status', ru: 'Статус вакцинации', ky: 'Вакцинация абалы'),
          L3(en: 'Any allergies', ru: 'Любые аллергии', ky: 'Аллергиялар'),
        ];
      case SpecialtyType.obGyn:
        return [
          L3(en: 'Current pregnancy week (if applicable)', ru: 'Текущая неделя беременности (если применимо)', ky: 'Учурдагы кош бойлуулук жумасы (тиешелүү болсо)'),
          L3(en: 'Symptoms and concerns', ru: 'Симптомы и опасения', ky: 'Белгилер жана тынчсызданууулар'),
          L3(en: 'Recent ultrasound results', ru: 'Недавние результаты УЗИ', ky: 'Жакынкы УЗИ натыйжалары'),
          L3(en: 'Medication list', ru: 'Список лекарств', ky: 'Дары-дармектердин тизмеси'),
          L3(en: 'Obstetric history', ru: 'Акушерская история', ky: 'Акушердик тарых'),
          L3(en: 'Any complications in current/previous pregnancies', ru: 'Осложнения в текущей/предыдущих беременностях', ky: 'Учурдагы/мурунку кош бойлуулуктагы татаалдашуулар'),
        ];
      case SpecialtyType.lactation:
        return [
          L3(en: "Baby's age and weight", ru: 'Возраст и вес ребёнка', ky: 'Баланын жашы жана салмагы'),
          L3(en: 'Feeding pattern (frequency, duration)', ru: 'Режим кормления (частота, длительность)', ky: 'Тамактандыруу тартиби (жыштыгы, узактыгы)'),
          L3(en: 'Specific concern (latch, supply, pain)', ru: 'Конкретная проблема (захват, количество молока, боль)', ky: 'Конкреттүү көйгөй (кармоо, сүт көлөмү, ооруу)'),
          L3(en: "What you've tried so far", ru: 'Что уже пробовали', ky: 'Эмнелерди мурда сынадыңыз'),
          L3(en: "Baby's diaper output (wet/dirty count)", ru: 'Количество подгузников (мокрых/грязных)', ky: 'Баланын бадана чыгарылышы (нымдуу/кир саны)'),
          L3(en: 'Any medications or supplements', ru: 'Любые лекарства или добавки', ky: 'Дары-дармектер же кошумчалар'),
        ];
      case SpecialtyType.dermatology:
        return [
          L3(en: 'Clear photos of the affected area', ru: 'Чёткие фото поражённой области', ky: 'Таасирленген аймактын так сүрөтү'),
          L3(en: 'When it first appeared', ru: 'Когда впервые появилось', ky: 'Качан биринчи жолу пайда болгон'),
          L3(en: 'Has it changed (spreading, color change)', ru: 'Менялось ли (распространение, изменение цвета)', ky: 'Өзгөрдүбү (жайылуу, түс өзгөрүү)'),
          L3(en: 'Any itching, pain, or discharge', ru: 'Зуд, боль или выделения', ky: 'Кычышуу, ооруу же бөлүнүп чыгуу'),
          L3(en: 'Products used on the area', ru: 'Использованные средства', ky: 'Аймакка колдонулган каражаттар'),
          L3(en: 'Allergy history', ru: 'История аллергии', ky: 'Аллергия тарыхы'),
        ];
      case SpecialtyType.mentalHealth:
        return [
          L3(en: "How you've been feeling (describe in your own words)", ru: 'Как вы себя чувствуете (опишите своими словами)', ky: 'Өзүңүздү кандай сезесиз (өз сөзүңүз менен сүрөттөңүз)'),
          L3(en: "How long you've felt this way", ru: 'Как давно вы так себя чувствуете', ky: 'Канча убакыттан бери ушундай сезесиз'),
          L3(en: 'Sleep quality and patterns', ru: 'Качество и режим сна', ky: 'Уйку сапаты жана тартиби'),
          L3(en: 'Support system (partner, family, friends)', ru: 'Система поддержки (партнёр, семья, друзья)', ky: 'Колдоо системасы (жубай, үй-бүлө, достор)'),
          L3(en: 'Any previous mental health treatment', ru: 'Предыдущее лечение ментального здоровья', ky: 'Мурунку психикалык ден соолук дарылоо'),
          L3(en: 'Current medications', ru: 'Текущие лекарства', ky: 'Учурдагы дары-дармектер'),
        ];
      case SpecialtyType.nutrition:
        return [
          L3(en: 'Current diet overview', ru: 'Обзор текущей диеты', ky: 'Учурдагы диетанын обзору'),
          L3(en: 'Specific goals or concerns', ru: 'Конкретные цели или опасения', ky: 'Конкреттүү максаттар же тынчсыздануулар'),
          L3(en: 'Any food allergies or intolerances', ru: 'Пищевые аллергии или непереносимости', ky: 'Тамак-аш аллергиялары же чыдамсыздыктар'),
          L3(en: "Baby's age (if about baby nutrition)", ru: 'Возраст ребёнка (если о детском питании)', ky: 'Баланын жашы (бала тамактануусу жөнүндө болсо)'),
          L3(en: 'Current feeding method (breast, formula, solids)', ru: 'Текущий способ кормления (грудь, смесь, прикорм)', ky: 'Учурдагы тамактандыруу ыкмасы (эмчек, смесь, кошумча тамак)'),
          L3(en: 'Any digestive issues', ru: 'Проблемы с пищеварением', ky: 'Аш сиңирүү көйгөйлөрү'),
        ];
    }
  }
}
