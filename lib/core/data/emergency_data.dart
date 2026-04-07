import 'package:flutter/material.dart';
import '../l10n/content_localizations.dart';

/// Evidence-based emergency quick-reference for new parents.
/// Designed to be scannable at 3am. Never replaces professional medical advice.
enum Urgency {
  emergency(L3(en: 'Go to ER NOW', ru: 'В скорую СЕЙЧАС', ky: 'АЗЫР тез жардамга'), Color(0xFFD32F2F)),
  callDoctor(L3(en: 'Call doctor today', ru: 'Позвоните врачу сегодня', ky: 'Бүгүн дарыгерге чалыңыз'), Color(0xFFF57C00)),
  watchFor(L3(en: 'Watch for this', ru: 'Наблюдайте', ky: 'Байкоо салыңыз'), Color(0xFF5BBCB4));

  const Urgency(this.label, this.color);
  final L3 label;
  final Color color;
}

class EmergencySign {
  final L3 title;
  final L3 description;
  final Urgency urgency;

  const EmergencySign({
    required this.title,
    required this.description,
    required this.urgency,
  });
}

class EmergencyCategory {
  final L3 title;
  final IconData icon;
  final List<EmergencySign> signs;

  const EmergencyCategory({
    required this.title,
    required this.icon,
    required this.signs,
  });
}

class EmergencyData {
  EmergencyData._();

  static const categories = <EmergencyCategory>[
    EmergencyCategory(
      title: L3(en: 'Fever & Illness', ru: 'Температура и болезни', ky: 'Температура жана оорулар'),
      icon: Icons.thermostat,
      signs: [
        EmergencySign(
          title: L3(en: 'Fever in baby under 3 months', ru: 'Температура у ребёнка до 3 месяцев', ky: '3 айга чейинки бөбөктө температура'),
          description: L3(
            en: 'Rectal temp 38\u00b0C (100.4\u00b0F) or higher. Call pediatrician or go to ER immediately \u2014 even if baby seems OK.',
            ru: 'Ректальная температура 38\u00b0C и выше. Вызовите педиатра или скорую немедленно \u2014 даже если малыш выглядит нормально.',
            ky: 'Ректалдык температура 38\u00b0C жана жогору. Педиатрга же тез жардамга дароо кайрылыңыз \u2014 бөбөк жакшы көрүнсө да.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Fever 39\u00b0C+ (102\u00b0F+) at any age', ru: 'Температура 39\u00b0C+ в любом возрасте', ky: 'Каалаган курактагы 39\u00b0C+ температура'),
          description: L3(
            en: 'Call doctor. High fevers need medical assessment.',
            ru: 'Позвоните врачу. Высокая температура требует осмотра.',
            ky: 'Дарыгерге чалыңыз. Жогорку температура текшерүүнү талап кылат.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'Persistent fever 3+ days', ru: 'Температура более 3 дней', ky: '3 күндөн ашык температура'),
          description: L3(
            en: 'Call doctor even if low-grade. Could indicate infection.',
            ru: 'Позвоните врачу, даже если невысокая. Может быть инфекция.',
            ky: 'Аз болсо да дарыгерге чалыңыз. Инфекция болушу мүмкүн.',
          ),
          urgency: Urgency.callDoctor,
        ),
      ],
    ),
    EmergencyCategory(
      title: L3(en: 'Breathing', ru: 'Дыхание', ky: 'Дем алуу'),
      icon: Icons.air,
      signs: [
        EmergencySign(
          title: L3(en: 'Blue lips, face, or fingers', ru: 'Синие губы, лицо или пальцы', ky: 'Көк эриндер, бет же бармактар'),
          description: L3(
            en: 'Call 911 / emergency services immediately.',
            ru: 'Вызовите скорую помощь немедленно.',
            ky: 'Тез жардамды дароо чакырыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Struggling to breathe', ru: 'Затруднённое дыхание', ky: 'Дем алуу кыйынчылыгы'),
          description: L3(
            en: 'Grunting, flaring nostrils, chest pulling in with each breath. Go to ER.',
            ru: 'Кряхтение, раздувание ноздрей, втяжение грудной клетки при вдохе. Вызывайте скорую.',
            ky: 'Кыңылдоо, мурун жыртылуу, дем алганда көкүрөк тартылуу. Тез жардамга кайрылыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Breathing faster than 60 breaths/min', ru: 'Дыхание чаще 60 раз/мин', ky: 'Мүнөтүнө 60дан ашык дем алуу'),
          description: L3(
            en: 'Count breaths for a full minute when baby is calm. Go to ER if persistent.',
            ru: 'Считайте вдохи в течение минуты, когда малыш спокоен. Вызовите скорую, если не проходит.',
            ky: 'Бөбөк тынч кезде бир мүнөт дем алууну санаңыз. Токтобосо тез жардамга кайрылыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Wheezing or barky cough', ru: 'Свистящее дыхание или лающий кашель', ky: 'Сызгыруу же үргүлгөн жөтөл'),
          description: L3(
            en: 'Call doctor \u2014 could be croup, bronchiolitis, or asthma.',
            ru: 'Позвоните врачу \u2014 может быть круп, бронхиолит или астма.',
            ky: 'Дарыгерге чалыңыз \u2014 круп, бронхиолит же астма болушу мүмкүн.',
          ),
          urgency: Urgency.callDoctor,
        ),
      ],
    ),
    EmergencyCategory(
      title: L3(en: 'Feeding & Hydration', ru: 'Кормление и гидратация', ky: 'Тамактануу жана суу балансы'),
      icon: Icons.local_drink,
      signs: [
        EmergencySign(
          title: L3(en: 'Fewer than 6 wet diapers/day (after day 5)', ru: 'Менее 6 мокрых подгузников в день (после 5-го дня)', ky: '5-күндөн кийин күнүнө 6дан аз нымдуу подгузник'),
          description: L3(
            en: 'Baby is not getting enough milk. Call doctor same day.',
            ru: 'Малыш получает мало молока. Позвоните врачу в тот же день.',
            ky: 'Бөбөк жетиштүү сүт албайт. Ошол эле күнү дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'No wet diaper in 8+ hours', ru: 'Сухой подгузник более 8 часов', ky: '8 сааттан ашык кургак подгузник'),
          description: L3(
            en: 'Sign of dehydration. Go to ER.',
            ru: 'Признак обезвоживания. Вызывайте скорую.',
            ky: 'Суусуздануу белгиси. Тез жардамга кайрылыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Refusing to feed for several hours', ru: 'Отказ от еды несколько часов', ky: 'Бир нече саат тамак жебөө'),
          description: L3(
            en: 'Out of character. Baby may be sick. Call doctor.',
            ru: 'Нехарактерное поведение. Малыш может быть болен. Позвоните врачу.',
            ky: 'Адаттагыдай эмес. Бөбөк ооруп калышы мүмкүн. Дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'Vomiting after every feed', ru: 'Рвота после каждого кормления', ky: 'Ар бир тамактануудан кийин кусуу'),
          description: L3(
            en: 'Different from spit-up. Forceful, large volume. Call doctor.',
            ru: 'Отличается от срыгивания. Обильная, фонтаном. Позвоните врачу.',
            ky: 'Кадимки кайтаруудан айырмаланат. Күчтүү, көп. Дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'Projectile vomiting', ru: 'Рвота фонтаном', ky: 'Атылма кусуу'),
          description: L3(
            en: 'Shoots out forcefully. Could be pyloric stenosis. Call doctor today.',
            ru: 'Выбрасывается с силой. Возможен пилоростеноз. Позвоните врачу сегодня.',
            ky: 'Күч менен чыгат. Пилоростеноз болушу мүмкүн. Бүгүн дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
      ],
    ),
    EmergencyCategory(
      title: L3(en: 'Behavior & Alertness', ru: 'Поведение и активность', ky: 'Жүрүм-турум жана активдүүлүк'),
      icon: Icons.visibility,
      signs: [
        EmergencySign(
          title: L3(en: 'Floppy, unresponsive baby', ru: 'Вялый, не реагирующий ребёнок', ky: 'Шалбыраган, жооп бербеген бөбөк'),
          description: L3(
            en: "Doesn't respond to voice, touch, or stimulation. Call 911.",
            ru: 'Не реагирует на голос, прикосновения, раздражители. Вызовите скорую.',
            ky: 'Үнгө, тийүүгө, таасирге жооп бербейт. Тез жардамды чакырыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Extreme lethargy', ru: 'Сильная вялость', ky: 'Катуу алсыздык'),
          description: L3(
            en: "Very hard to wake, even for feeding. Sleeping all day. Go to ER.",
            ru: 'Очень трудно разбудить, даже для кормления. Спит весь день. Вызывайте скорую.',
            ky: 'Ойготуу абдан кыйын, тамактанууга да. Күнү бою уктайт. Тез жардамга кайрылыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'High-pitched continuous cry', ru: 'Непрерывный пронзительный плач', ky: 'Үзгүлтүксүз чыйылдаган ыйлоо'),
          description: L3(
            en: "Unusual 'weak' or 'shrill' cry. Could indicate serious illness. Call doctor.",
            ru: 'Необычный слабый или пронзительный плач. Может указывать на серьёзную болезнь. Позвоните врачу.',
            ky: 'Адаттан тыш алсыз же чыйылдаган ыйлоо. Оор ооруну билдириши мүмкүн. Дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'Inconsolable crying 3+ hours', ru: 'Безутешный плач более 3 часов', ky: '3 сааттан ашык токтобос ыйлоо'),
          description: L3(
            en: "Non-stop screaming that nothing calms. Call doctor \u2014 could be colic or something more.",
            ru: 'Непрерывный крик, ничего не помогает. Позвоните врачу \u2014 может быть колики или серьёзнее.',
            ky: 'Эч нерсе тынчтандырбаган үзгүлтүксүз кыйкырык. Дарыгерге чалыңыз \u2014 колика же олуттуураак болушу мүмкүн.',
          ),
          urgency: Urgency.callDoctor,
        ),
      ],
    ),
    EmergencyCategory(
      title: L3(en: 'Color & Skin', ru: 'Цвет кожи', ky: 'Тери түсү'),
      icon: Icons.palette,
      signs: [
        EmergencySign(
          title: L3(en: 'Yellow skin getting worse (jaundice)', ru: 'Желтизна кожи усиливается (желтуха)', ky: 'Теринин саргаюусу күчөп жатат (сарыктоо)'),
          description: L3(
            en: 'Especially in the first 2 weeks. Spreading to legs/feet. Call doctor today.',
            ru: 'Особенно в первые 2 недели. Распространяется на ноги/ступни. Позвоните врачу сегодня.',
            ky: 'Биринчи 2 жумада өзгөчө. Буттарга/табандарга жайылат. Бүгүн дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: "Rash that doesn't fade with glass test", ru: 'Сыпь, не исчезающая при надавливании стаканом', ky: 'Стакан менен басканда жоголбогон бөрттүк'),
          description: L3(
            en: "Press a clear glass on rash \u2014 if it doesn't fade, could be meningitis. Go to ER.",
            ru: 'Приложите прозрачный стакан к сыпи \u2014 если не бледнеет, возможен менингит. Вызывайте скорую.',
            ky: 'Тунук стаканды бөрттүккө басыңыз \u2014 жоголбосо, менингит болушу мүмкүн. Тез жардамга кайрылыңыз.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Pale, gray, or mottled skin', ru: 'Бледная, серая или мраморная кожа', ky: 'Бозомук, боз же мрамор тери'),
          description: L3(
            en: 'Call 911. Sign of poor circulation.',
            ru: 'Вызовите скорую. Признак нарушения кровообращения.',
            ky: 'Тез жардамды чакырыңыз. Кан айлануунун бузулуу белгиси.',
          ),
          urgency: Urgency.emergency,
        ),
      ],
    ),
    EmergencyCategory(
      title: L3(en: 'Injuries', ru: 'Травмы', ky: 'Жаракаттар'),
      icon: Icons.medical_services,
      signs: [
        EmergencySign(
          title: L3(en: 'Any head injury with loss of consciousness', ru: 'Любая травма головы с потерей сознания', ky: 'Эсин жоготуу менен баш жаракаты'),
          description: L3(
            en: 'Go to ER, even briefly.',
            ru: 'Вызывайте скорую, даже если ненадолго.',
            ky: 'Тез жардамга кайрылыңыз, кыска болсо да.',
          ),
          urgency: Urgency.emergency,
        ),
        EmergencySign(
          title: L3(en: 'Fall from height', ru: 'Падение с высоты', ky: 'Бийиктиктен кулоо'),
          description: L3(
            en: 'Changing table, bed, couch \u2014 call doctor. Watch for vomiting, drowsiness, behavior changes.',
            ru: 'Пеленальный столик, кровать, диван \u2014 позвоните врачу. Следите за рвотой, сонливостью, изменениями поведения.',
            ky: 'Оруу столу, керебет, диван \u2014 дарыгерге чалыңыз. Кусууга, уйкучулукка, жүрүм-турум өзгөрүүсүнө көңүл буруңуз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: "Choking / gagging that doesn't clear", ru: 'Удушье, которое не проходит', ky: 'Өтпөгөн муунуу'),
          description: L3(
            en: "Baby can't breathe, cry, or cough. Call 911. Start infant CPR.",
            ru: 'Малыш не может дышать, плакать или кашлять. Вызовите скорую. Начните непрямой массаж сердца.',
            ky: 'Бөбөк дем ала, ыйлай же жөтөлө албайт. Тез жардамды чакырыңыз. Жүрөк массажын баштаңыз.',
          ),
          urgency: Urgency.emergency,
        ),
      ],
    ),
    EmergencyCategory(
      title: L3(en: 'Stool & Diapers', ru: 'Стул и подгузники', ky: 'Заара жана подгузниктер'),
      icon: Icons.baby_changing_station,
      signs: [
        EmergencySign(
          title: L3(en: 'Bloody stool', ru: 'Кровь в стуле', ky: 'Заарада кан'),
          description: L3(
            en: 'Any visible blood in diaper. Call doctor same day.',
            ru: 'Любая видимая кровь в подгузнике. Позвоните врачу в тот же день.',
            ky: 'Подгузникте көрүнгөн кан. Ошол эле күнү дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'Black, tarry stool (after day 5)', ru: 'Чёрный, дёгтеобразный стул (после 5-го дня)', ky: 'Кара, чайырдай заара (5-күндөн кийин)'),
          description: L3(
            en: 'Meconium is normal first few days. After that, black stool could mean bleeding. Call doctor.',
            ru: 'Меконий нормален в первые дни. После \u2014 чёрный стул может означать кровотечение. Позвоните врачу.',
            ky: 'Меконий биринчи күндөрдө нормалдуу. Андан кийин кара заара кан агууну билдириши мүмкүн. Дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'White/pale stool', ru: 'Белый/бледный стул', ky: 'Ак/бозомук заара'),
          description: L3(
            en: 'Could indicate liver issue. Call doctor today.',
            ru: 'Может указывать на проблемы с печенью. Позвоните врачу сегодня.',
            ky: 'Боор маселесин билдириши мүмкүн. Бүгүн дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
        EmergencySign(
          title: L3(en: 'Watery diarrhea multiple times', ru: 'Водянистый понос несколько раз', ky: 'Суулуу ич өтүү бир нече жолу'),
          description: L3(
            en: 'Risk of dehydration. Monitor wet diapers. Call if concerned.',
            ru: 'Риск обезвоживания. Следите за мокрыми подгузниками. Позвоните врачу при беспокойстве.',
            ky: 'Суусуздануу коркунучу. Нымдуу подгузниктерди байкаңыз. Тынчсызданганда дарыгерге чалыңыз.',
          ),
          urgency: Urgency.callDoctor,
        ),
      ],
    ),
  ];
}
