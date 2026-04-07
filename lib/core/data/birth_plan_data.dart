import '../l10n/content_localizations.dart';

/// Birth plan seed data — questions grouped by section with preset options.
/// No medical recommendations, just structured preference capture.
class BirthPlanQuestion {
  final String id;
  final L3 section;
  final L3 question;
  final List<L3> options;
  final bool allowCustom;

  const BirthPlanQuestion({
    required this.id,
    required this.section,
    required this.question,
    required this.options,
    this.allowCustom = true,
  });
}

class BirthPlanData {
  BirthPlanData._();

  static const _sEnvironment = L3(en: 'Environment', ru: 'Обстановка', ky: 'Чөйрө');
  static const _sPainMgmt = L3(en: 'Pain Management', ru: 'Обезболивание', ky: 'Ооруну башкаруу');
  static const _sLaborSupport = L3(en: 'Labor Support', ru: 'Поддержка в родах', ky: 'Төрөттөгү колдоо');
  static const _sDelivery = L3(en: 'Delivery', ru: 'Роды', ky: 'Төрөт');
  static const _sAfterBirth = L3(en: 'After Birth', ru: 'После родов', ky: 'Төрөттөн кийин');
  static const _sNewborn = L3(en: 'Newborn Care', ru: 'Уход за новорождённым', ky: 'Жаңы төрөлгөн балага кам көрүү');

  static const sections = <L3>[
    _sEnvironment,
    _sPainMgmt,
    _sLaborSupport,
    _sDelivery,
    _sAfterBirth,
    _sNewborn,
  ];

  static const questions = <BirthPlanQuestion>[
    // ENVIRONMENT
    BirthPlanQuestion(
      id: 'env-lights',
      section: _sEnvironment,
      question: L3(en: 'Lighting preference', ru: 'Предпочтение по освещению', ky: 'Жарыктандыруу каалоосу'),
      options: [
        L3(en: 'Dim lights', ru: 'Приглушённый свет', ky: 'Күңүрт жарык'),
        L3(en: 'Natural light', ru: 'Естественный свет', ky: 'Табигый жарык'),
        L3(en: 'Bright lights OK', ru: 'Яркий свет — ОК', ky: 'Жарык жарык — ОК'),
      ],
    ),
    BirthPlanQuestion(
      id: 'env-music',
      section: _sEnvironment,
      question: L3(en: 'Music', ru: 'Музыка', ky: 'Музыка'),
      options: [
        L3(en: 'Yes, my playlist', ru: 'Да, мой плейлист', ky: 'Ооба, менин плейлистим'),
        L3(en: 'Yes, any music', ru: 'Да, любая музыка', ky: 'Ооба, каалаган музыка'),
        L3(en: 'Quiet, no music', ru: 'Тишина, без музыки', ky: 'Тынч, музыкасыз'),
      ],
    ),
    BirthPlanQuestion(
      id: 'env-visitors',
      section: _sEnvironment,
      question: L3(en: 'Visitors during labor', ru: 'Посетители во время родов', ky: 'Төрөт учурундагы конокторs'),
      options: [
        L3(en: 'Partner only', ru: 'Только партнёр', ky: 'Жубайы гана'),
        L3(en: 'Partner + support person', ru: 'Партнёр + помощник', ky: 'Жубайы + колдоочу'),
        L3(en: 'Extended family welcome', ru: 'Родственники приветствуются', ky: 'Тууган-туушкандар каалашса'),
      ],
    ),
    BirthPlanQuestion(
      id: 'env-photos',
      section: _sEnvironment,
      question: L3(en: 'Photos & video', ru: 'Фото и видео', ky: 'Сүрөт жана видео'),
      options: [
        L3(en: 'Yes, photos and video welcome', ru: 'Да, фото и видео приветствуются', ky: 'Ооба, сүрөт жана видео каалашса'),
        L3(en: 'Photos only', ru: 'Только фото', ky: 'Сүрөт гана'),
        L3(en: 'After birth only', ru: 'Только после родов', ky: 'Төрөттөн кийин гана'),
        L3(en: 'No photos/video', ru: 'Без фото/видео', ky: 'Сүрөт/видео жок'),
      ],
    ),

    // PAIN MANAGEMENT
    BirthPlanQuestion(
      id: 'pain-preference',
      section: _sPainMgmt,
      question: L3(en: 'Pain management preference', ru: 'Предпочтение по обезболиванию', ky: 'Ооруну башкаруу каалоосу'),
      options: [
        L3(en: 'Unmedicated', ru: 'Без медикаментов', ky: 'Дары-дармексиз'),
        L3(en: 'Open to medication if I ask', ru: 'Открыта к медикаментам, если попрошу', ky: 'Сурасам дарыга даярмын'),
        L3(en: 'Epidural as soon as possible', ru: 'Эпидуральную как можно скорее', ky: 'Эпидуралды мүмкүн болушунча тез'),
        L3(en: 'Let me decide during labor', ru: 'Решу во время родов', ky: 'Төрөт учурунда чечем'),
      ],
    ),
    BirthPlanQuestion(
      id: 'pain-techniques',
      section: _sPainMgmt,
      question: L3(en: 'Non-medical techniques I want', ru: 'Немедицинские методы, которые хочу', ky: 'Каалаган медициналык эмес ыкмалар'),
      options: [
        L3(en: 'Breathing techniques', ru: 'Дыхательные техники', ky: 'Дем алуу ыкмалары'),
        L3(en: 'Movement / walking', ru: 'Движение / ходьба', ky: 'Кыймыл / басуу'),
        L3(en: 'Shower / bath', ru: 'Душ / ванна', ky: 'Душ / ванна'),
        L3(en: 'Birthing ball', ru: 'Мяч для родов', ky: 'Төрөт тобу'),
        L3(en: 'Massage', ru: 'Массаж', ky: 'Массаж'),
        L3(en: 'Position changes', ru: 'Смена позиций', ky: 'Позицияны өзгөртүү'),
      ],
    ),

    // LABOR SUPPORT
    BirthPlanQuestion(
      id: 'support-team',
      section: _sLaborSupport,
      question: L3(en: 'Who will be with me', ru: 'Кто будет со мной', ky: 'Ким жанымда болот'),
      options: [
        L3(en: 'Partner', ru: 'Партнёр', ky: 'Жубайым'),
        L3(en: 'Doula', ru: 'Доула', ky: 'Доула'),
        L3(en: 'Mother', ru: 'Мама', ky: 'Апам'),
        L3(en: 'Friend', ru: 'Подруга', ky: 'Досум'),
        L3(en: 'Just medical staff', ru: 'Только медперсонал', ky: 'Медперсонал гана'),
      ],
    ),
    BirthPlanQuestion(
      id: 'support-movement',
      section: _sLaborSupport,
      question: L3(en: 'Freedom of movement during labor', ru: 'Свобода движения во время родов', ky: 'Төрөт учурунда кыймыл эркиндиги'),
      options: [
        L3(en: 'Walking and moving freely', ru: 'Свободно ходить и двигаться', ky: 'Эркин басуу жана кыймылдоо'),
        L3(en: 'Birthing ball / chair', ru: 'Мяч / кресло для родов', ky: 'Төрөт тобу / кресло'),
        L3(en: 'Hydrotherapy (shower/bath)', ru: 'Гидротерапия (душ/ванна)', ky: 'Гидротерапия (душ/ванна)'),
        L3(en: 'Limited to bed if necessary', ru: 'Кровать при необходимости', ky: 'Зарыл болсо төшөктө'),
      ],
    ),
    BirthPlanQuestion(
      id: 'support-monitoring',
      section: _sLaborSupport,
      question: L3(en: 'Fetal monitoring preference', ru: 'Предпочтение по мониторингу плода', ky: 'Урукту мониторингдөө каалоосу'),
      options: [
        L3(en: 'Intermittent only', ru: 'Только периодический', ky: 'Мезгил-мезгили менен гана'),
        L3(en: 'Continuous if required', ru: 'Непрерывный при необходимости', ky: 'Зарыл болсо үзгүлтүксүз'),
        L3(en: 'Whatever is safest', ru: 'Что безопаснее', ky: 'Кайсы коопсуз болсо'),
      ],
    ),

    // DELIVERY
    BirthPlanQuestion(
      id: 'delivery-position',
      section: _sDelivery,
      question: L3(en: 'Preferred birthing position', ru: 'Предпочтительная поза для родов', ky: 'Каалаган төрөт позициясы'),
      options: [
        L3(en: 'Whatever feels right in the moment', ru: 'Что будет удобно в тот момент', ky: 'Ошол учурда ыңгайлуу болгондой'),
        L3(en: 'Upright / squatting', ru: 'Вертикально / на корточках', ky: 'Тик / отуруп'),
        L3(en: 'Side-lying', ru: 'На боку', ky: 'Капталга жатып'),
        L3(en: 'On hands and knees', ru: 'На четвереньках', ky: 'Колдор жана тизелер менен'),
        L3(en: 'Traditional / on back', ru: 'Традиционно / на спине', ky: 'Салттуу / арканга жатып'),
      ],
    ),
    BirthPlanQuestion(
      id: 'delivery-episiotomy',
      section: _sDelivery,
      question: L3(en: 'Episiotomy preference', ru: 'Предпочтение по эпизиотомии', ky: 'Эпизиотомия каалоосу'),
      options: [
        L3(en: 'Avoid if possible, prefer natural tearing', ru: 'Избежать по возможности, предпочитаю естественный разрыв', ky: 'Мүмкүн болсо качуу, табигый жыртылууну каалайм'),
        L3(en: 'Only if medically necessary', ru: 'Только при медицинской необходимости', ky: 'Медициналык зарылдык болсо гана'),
        L3(en: 'No strong preference', ru: 'Нет сильного предпочтения', ky: 'Айрыкча каалоо жок'),
      ],
    ),
    BirthPlanQuestion(
      id: 'delivery-partner-role',
      section: _sDelivery,
      question: L3(en: 'Partner involvement at delivery', ru: 'Участие партнёра в родах', ky: 'Жубайынын төрөттөгү катышуусу'),
      options: [
        L3(en: 'Hold my hand / coach me', ru: 'Держать за руку / поддерживать', ky: 'Колумду кармоо / колдоо'),
        L3(en: 'Catch baby', ru: 'Принять ребёнка', ky: 'Баланы кабыл алуу'),
        L3(en: 'Cut the cord', ru: 'Перерезать пуповину', ky: 'Киндикти кесүү'),
        L3(en: 'Announce sex', ru: 'Объявить пол', ky: 'Жынысын жарыялоо'),
        L3(en: 'Stay by my head', ru: 'Быть рядом с головой', ky: 'Башымдын жанында болуу'),
      ],
    ),

    // AFTER BIRTH
    BirthPlanQuestion(
      id: 'after-cord',
      section: _sAfterBirth,
      question: L3(en: 'Cord clamping', ru: 'Пережатие пуповины', ky: 'Киндикти кысуу'),
      options: [
        L3(en: 'Delayed cord clamping', ru: 'Отсроченное пережатие', ky: 'Кечиктирилген киндик кысуу'),
        L3(en: 'Whatever is standard', ru: 'Что стандартно', ky: 'Стандарттуу болгондой'),
        L3(en: 'Save cord blood', ru: 'Сохранить пуповинную кровь', ky: 'Киндик канын сактоо'),
      ],
    ),
    BirthPlanQuestion(
      id: 'after-skin-to-skin',
      section: _sAfterBirth,
      question: L3(en: 'First moments', ru: 'Первые моменты', ky: 'Биринчи учурлар'),
      options: [
        L3(en: 'Immediate skin-to-skin for 1+ hours', ru: 'Немедленный контакт кожа-к-коже 1+ час', ky: 'Дароо тери-терине 1+ саат'),
        L3(en: 'Weigh baby first, then skin-to-skin', ru: 'Сначала взвесить, потом кожа-к-коже', ky: 'Адегенде салмагын өлчөп, анан тери-терине'),
        L3(en: 'Follow hospital routine', ru: 'Следовать протоколу больницы', ky: 'Ооруканадан протоколуна ылайык'),
      ],
    ),
    BirthPlanQuestion(
      id: 'after-feeding',
      section: _sAfterBirth,
      question: L3(en: 'First feeding', ru: 'Первое кормление', ky: 'Биринчи тамактандыруу'),
      options: [
        L3(en: 'Breastfeed immediately', ru: 'Грудное вскармливание сразу', ky: 'Дароо эмчек берүү'),
        L3(en: 'Formula feed from the start', ru: 'Смесь с самого начала', ky: 'Башынан эле смесь'),
        L3(en: 'Combination', ru: 'Комбинация', ky: 'Аралаш'),
        L3(en: 'Still deciding', ru: 'Ещё решаю', ky: 'Али чечкен жокмун'),
      ],
    ),
    BirthPlanQuestion(
      id: 'after-placenta',
      section: _sAfterBirth,
      question: L3(en: 'Placenta', ru: 'Плацента', ky: 'Плацента'),
      options: [
        L3(en: 'Dispose normally', ru: 'Утилизировать обычно', ky: 'Кадимкидей жок кылуу'),
        L3(en: 'I want to see it', ru: 'Хочу посмотреть', ky: 'Көргүм келет'),
        L3(en: 'Save for encapsulation', ru: 'Сохранить для капсулирования', ky: 'Капсулалоо үчүн сактоо'),
      ],
    ),

    // NEWBORN CARE
    BirthPlanQuestion(
      id: 'newborn-bath',
      section: _sNewborn,
      question: L3(en: "Baby's first bath", ru: 'Первое купание малыша', ky: 'Баланын биринчи жуунуусу'),
      options: [
        L3(en: 'Delay 24+ hours', ru: 'Отложить на 24+ часа', ky: '24+ саатка кечиктирүү'),
        L3(en: 'After first feeding', ru: 'После первого кормления', ky: 'Биринчи тамактандыруудан кийин'),
        L3(en: 'Standard timing', ru: 'Стандартное время', ky: 'Стандарттуу убакыт'),
      ],
    ),
    BirthPlanQuestion(
      id: 'newborn-vitamin-k',
      section: _sNewborn,
      question: L3(en: 'Vitamin K injection', ru: 'Инъекция витамина К', ky: 'Витамин К сайуу'),
      options: [
        L3(en: 'Yes', ru: 'Да', ky: 'Ооба'),
        L3(en: 'Oral vitamin K instead', ru: 'Оральный витамин К вместо', ky: 'Анын ордуна оозеки витамин К'),
        L3(en: 'Discuss with doctor', ru: 'Обсудить с врачом', ky: 'Дарыгер менен талкуулоо'),
      ],
    ),
    BirthPlanQuestion(
      id: 'newborn-eye-ointment',
      section: _sNewborn,
      question: L3(en: 'Eye ointment', ru: 'Глазная мазь', ky: 'Көз дарысы'),
      options: [
        L3(en: 'Yes', ru: 'Да', ky: 'Ооба'),
        L3(en: 'Delay', ru: 'Отложить', ky: 'Кечиктирүү'),
        L3(en: 'Decline', ru: 'Отказаться', ky: 'Баш тартуу'),
      ],
    ),
    BirthPlanQuestion(
      id: 'newborn-circumcision',
      section: _sNewborn,
      question: L3(en: 'Circumcision (if applicable)', ru: 'Обрезание (если применимо)', ky: 'Сүннөт (тиешелүү болсо)'),
      options: [
        L3(en: 'Yes', ru: 'Да', ky: 'Ооба'),
        L3(en: 'No', ru: 'Нет', ky: 'Жок'),
        L3(en: "Doesn't apply", ru: 'Не применимо', ky: 'Тиешеси жок'),
      ],
    ),
    BirthPlanQuestion(
      id: 'newborn-nursery',
      section: _sNewborn,
      question: L3(en: 'Rooming-in', ru: 'Совместное пребывание', ky: 'Бирге жатуу'),
      options: [
        L3(en: 'Baby stays with me at all times', ru: 'Ребёнок всегда со мной', ky: 'Бала дайыма менин жанымда'),
        L3(en: 'Nursery at night only', ru: 'Детская только на ночь', ky: 'Түнкүсүн гана бөлмөгө'),
        L3(en: 'Follow hospital routine', ru: 'По протоколу больницы', ky: 'Ооруканадан протоколуна ылайык'),
      ],
    ),
  ];

  static List<BirthPlanQuestion> bySection(L3 section) {
    return questions.where((q) => q.section.en == section.en).toList();
  }
}
