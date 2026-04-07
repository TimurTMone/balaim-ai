import 'package:flutter/material.dart';
import '../l10n/content_localizations.dart';

/// Trimester-specific guidance that complements the week-by-week data.
/// Three content types: Nutrition, Exercise, Partner Tips.
enum Trimester {
  first(L3(en: 'First', ru: 'Первый', ky: 'Биринчи'), 1, 13),
  second(L3(en: 'Second', ru: 'Второй', ky: 'Экинчи'), 14, 27),
  third(L3(en: 'Third', ru: 'Третий', ky: 'Үчүнчү'), 28, 42);

  const Trimester(this.label, this.startWeek, this.endWeek);
  final L3 label;
  final int startWeek;
  final int endWeek;

  static Trimester fromWeek(int week) {
    if (week <= 13) return Trimester.first;
    if (week <= 27) return Trimester.second;
    return Trimester.third;
  }
}

class TrimesterGuide {
  final L3 title;
  final IconData icon;
  final Color color;
  final L3 intro;
  final List<L3> dos;
  final List<L3> donts;

  const TrimesterGuide({
    required this.title,
    required this.icon,
    required this.color,
    required this.intro,
    required this.dos,
    required this.donts,
  });
}

class TrimesterContent {
  TrimesterContent._();

  // ==========================================================
  // NUTRITION
  // ==========================================================
  static const nutritionByTrimester = <Trimester, TrimesterGuide>{
    Trimester.first: TrimesterGuide(
      title: L3(en: 'Nutrition — First Trimester', ru: 'Питание — Первый триместр', ky: 'Тамактануу — Биринчи триместр'),
      icon: Icons.restaurant,
      color: Color(0xFFE8787A),
      intro: L3(
        en: 'Nausea may dominate. Focus on calories that stay down, not perfect nutrition. You need only ~100-150 extra calories per day in trimester 1.',
        ru: 'Тошнота может преобладать. Сосредоточьтесь на том, чтобы еда усваивалась, а не на идеальном питании. В первом триместре нужно всего ~100-150 дополнительных калорий в день.',
        ky: 'Жүрөк айлануу басымдуу болушу мүмкүн. Идеалдуу тамактанууга эмес, тамактын сиңишине көңүл буруңуз. 1-триместрде күнүнө ~100-150 кошумча калория гана керек.',
      ),
      dos: [
        L3(en: 'Take prenatal vitamins with folic acid (400-800 mcg)', ru: 'Принимайте витамины для беременных с фолиевой кислотой (400-800 мкг)', ky: 'Фолий кислотасы менен кош бойлуулар витаминин ичиңиз (400-800 мкг)'),
        L3(en: 'Eat small, frequent meals every 2-3 hours', ru: 'Ешьте маленькими порциями каждые 2-3 часа', ky: 'Ар 2-3 сааттан кичинекей порциялар менен тамактаныңыз'),
        L3(en: 'Ginger tea, ginger candies, vitamin B6 for nausea', ru: 'Имбирный чай, имбирные конфеты, витамин B6 от тошноты', ky: 'Жүрөк айлануудан имбирь чайы, имбирь конфеттери, витамин B6'),
        L3(en: 'Dry crackers before getting out of bed', ru: 'Сухие крекеры до подъёма с кровати', ky: 'Төшөктөн турар алдында кургак крекерлер'),
        L3(en: 'Protein at every meal (eggs, yogurt, lentils)', ru: 'Белок в каждый приём пищи (яйца, йогурт, чечевица)', ky: 'Ар бир тамакта белок (жумуртка, йогурт, буурчак)'),
        L3(en: 'Stay hydrated — water, broth, popsicles, ice chips', ru: 'Пейте больше жидкости — вода, бульон, фруктовый лёд, кусочки льда', ky: 'Суюктукту көп ичиңиз — суу, сорпо, муз, муз кесектери'),
        L3(en: 'Folate-rich foods: leafy greens, citrus, beans', ru: 'Продукты с фолатами: листовая зелень, цитрусовые, бобовые', ky: 'Фолатка бай тамактар: жашыл жалбырактар, цитрустар, буурчак'),
      ],
      donts: [
        L3(en: 'Alcohol — any amount', ru: 'Алкоголь — любое количество', ky: 'Алкоголь — каалаган өлчөмдө'),
        L3(en: 'Raw fish, raw eggs, unpasteurized dairy', ru: 'Сырая рыба, сырые яйца, непастеризованная молочка', ky: 'Чийки балык, чийки жумуртка, пастеризацияланбаган сүт азыктары'),
        L3(en: 'High-mercury fish (shark, swordfish, king mackerel)', ru: 'Рыба с высоким содержанием ртути (акула, рыба-меч, королевская макрель)', ky: 'Жогорку сымап балыктары (акула, кылыч балык, корол скумбриясы)'),
        L3(en: 'Deli meats unless heated to steaming', ru: 'Колбасные изделия, если не нагреты до горячего пара', ky: 'Ысытылбаса колбаса азыктары'),
        L3(en: 'Raw sprouts, unwashed produce', ru: 'Сырые ростки, немытые продукты', ky: 'Чийки өсүндүлөр, жуулбаган азыктар'),
        L3(en: 'More than 200mg caffeine per day (~1 coffee)', ru: 'Более 200 мг кофеина в день (~1 кофе)', ky: 'Күнүнө 200 мг ашык кофеин (~1 кофе)'),
        L3(en: 'Herbal teas unless cleared by your doctor', ru: 'Травяные чаи без одобрения врача', ky: 'Дарыгер уруксатысыз чөп чайлары'),
      ],
    ),
    Trimester.second: TrimesterGuide(
      title: L3(en: 'Nutrition — Second Trimester', ru: 'Питание — Второй триместр', ky: 'Тамактануу — Экинчи триместр'),
      icon: Icons.restaurant,
      color: Color(0xFF5BBCB4),
      intro: L3(
        en: "Appetite returns, nausea often fades. Add ~340 extra calories per day. Focus on iron, calcium, and protein for baby's rapid growth.",
        ru: 'Аппетит возвращается, тошнота часто проходит. Добавьте ~340 дополнительных калорий в день. Сосредоточьтесь на железе, кальции и белке для быстрого роста малыша.',
        ky: 'Тамак ичкиңиз кайтат, жүрөк айлануу көбүнчө басылат. Күнүнө ~340 кошумча калория кошуңуз. Баланын тез өсүшү үчүн темир, кальций жана белокко көңүл буруңуз.',
      ),
      dos: [
        L3(en: 'Iron-rich foods daily: red meat, lentils, spinach, dried fruit', ru: 'Продукты с железом ежедневно: красное мясо, чечевица, шпинат, сухофрукты', ky: 'Күн сайын темирге бай тамактар: кызыл эт, буурчак, шпинат, кургатылган жемиштер'),
        L3(en: 'Pair iron with vitamin C for absorption (orange juice, bell peppers)', ru: 'Сочетайте железо с витамином С для усвоения (апельсиновый сок, болгарский перец)', ky: 'Сиңирүү үчүн темирди витамин С менен айкалыштырыңыз (апельсин шире, болгар мурчу)'),
        L3(en: 'Calcium 1000mg/day: dairy, fortified plant milks, tofu, sardines', ru: 'Кальций 1000 мг/день: молочка, обогащённое растительное молоко, тофу, сардины', ky: 'Кальций 1000 мг/күн: сүт азыктары, байытылган өсүмдүк сүтү, тофу, сардин'),
        L3(en: 'Omega-3s: salmon (2x/week), walnuts, chia seeds, flax', ru: 'Омега-3: лосось (2 раза/неделю), грецкие орехи, семена чиа, лён', ky: 'Омега-3: лосось (жумасына 2 жолу), грек жаңгагы, чиа уруктары, зыгыр'),
        L3(en: 'Whole grains for sustained energy', ru: 'Цельные злаки для стабильной энергии', ky: 'Туруктуу энергия үчүн дан азыктары'),
        L3(en: 'Protein: 75-100g daily', ru: 'Белок: 75-100 г в день', ky: 'Белок: күнүнө 75-100 г'),
        L3(en: 'Fiber to combat constipation (25-30g/day)', ru: 'Клетчатка против запоров (25-30 г/день)', ky: 'Ич катуулукка каршы клетчатка (25-30 г/күн)'),
      ],
      donts: [
        L3(en: 'Processed foods and excess sugar (gestational diabetes risk)', ru: 'Полуфабрикаты и лишний сахар (риск гестационного диабета)', ky: 'Иштетилген тамактар жана ашыкча кант (гестациялык диабет тобокели)'),
        L3(en: 'Unpasteurized cheeses (brie, feta, blue)', ru: 'Непастеризованные сыры (бри, фета, с плесенью)', ky: 'Пастеризацияланбаган сырлар (бри, фета, көгөрүп)'),
        L3(en: 'Raw or undercooked meat, poultry, seafood', ru: 'Сырое или недоготовленное мясо, птица, морепродукты', ky: 'Чийки же жетишсиз бышырылган эт, канаттуулар, деңиз азыктары'),
        L3(en: 'Fish high in mercury', ru: 'Рыба с высоким содержанием ртути', ky: 'Сымабы жогору балык'),
        L3(en: 'Excessive vitamin A (liver, retinol supplements)', ru: 'Избыток витамина А (печень, ретинол)', ky: 'Ашыкча витамин А (боор, ретинол)'),
        L3(en: 'Artificial sweeteners in large amounts', ru: 'Искусственные подсластители в больших количествах', ky: 'Жасалма таттыткычтар көп сандагы'),
        L3(en: 'Empty-calorie foods — baby needs nutrients now', ru: 'Пустые калории — малышу нужны питательные вещества', ky: 'Бош калориялуу тамактар — балага азык керек'),
      ],
    ),
    Trimester.third: TrimesterGuide(
      title: L3(en: 'Nutrition — Third Trimester', ru: 'Питание — Третий триместр', ky: 'Тамактануу — Үчүнчү триместр'),
      icon: Icons.restaurant,
      color: Color(0xFFF5C15A),
      intro: L3(
        en: 'Baby gains ~250g/week now. You need ~450 extra calories per day. Focus on brain development (DHA, choline) and your iron stores.',
        ru: 'Малыш набирает ~250 г/неделю. Вам нужно ~450 дополнительных калорий в день. Сосредоточьтесь на развитии мозга (DHA, холин) и запасах железа.',
        ky: 'Бала жумасына ~250 г салмак кошот. Сизге күнүнө ~450 кошумча калория керек. Мээнин өнүгүшүнө (DHA, холин) жана темир запасыңызга көңүл буруңуз.',
      ),
      dos: [
        L3(en: 'DHA / Omega-3: salmon, sardines, supplements if needed', ru: 'DHA / Омега-3: лосось, сардины, добавки при необходимости', ky: 'DHA / Омега-3: лосось, сардин, зарыл болсо кошумчалар'),
        L3(en: 'Choline for brain: eggs, beans, peanuts, beef', ru: 'Холин для мозга: яйца, бобовые, арахис, говядина', ky: 'Мээ үчүн холин: жумуртка, буурчак, жержаңгак, уй эти'),
        L3(en: 'Calcium for bones: continue 1000mg/day', ru: 'Кальций для костей: продолжайте 1000 мг/день', ky: 'Сөөктөр үчүн кальций: 1000 мг/күн улантыңыз'),
        L3(en: 'Iron: baby stockpiles iron in last trimester', ru: 'Железо: малыш накапливает запасы в последнем триместре', ky: 'Темир: бала акыркы триместрде темир запастайт'),
        L3(en: 'Small meals — heartburn worsens with big meals', ru: 'Маленькие порции — изжога усиливается от больших', ky: 'Кичинекей порциялар — чоң тамактан ашказан күйүүсү күчөйт'),
        L3(en: 'Hydration: 10-12 glasses water daily', ru: 'Гидратация: 10-12 стаканов воды в день', ky: 'Суюктук: күнүнө 10-12 стакан суу'),
        L3(en: 'Dates (6/day in weeks 36-40) may help cervical ripening', ru: 'Финики (6 шт/день на 36-40 неделях) могут помочь раскрытию шейки', ky: 'Курма (36-40 жумалыкта 6 шт/күн) жатын моюнун жетилтүүгө жардам берет'),
      ],
      donts: [
        L3(en: 'Large meals before bed (heartburn)', ru: 'Большие порции перед сном (изжога)', ky: 'Уктоор алдында чоң тамак (ашказан күйүүсү)'),
        L3(en: 'Lying flat after eating', ru: 'Лежать плашмя после еды', ky: 'Тамактан кийин жатуу'),
        L3(en: 'Spicy, acidic, fried foods if heartburn is bad', ru: 'Острое, кислое, жареное при сильной изжоге', ky: 'Ашказан күчтүү күйсө ачуу, кычкыл, кууруулар'),
        L3(en: 'Excess salt (swelling)', ru: 'Избыток соли (отёки)', ky: 'Ашыкча туз (шишүү)'),
        L3(en: 'Same exclusions as trimesters 1 and 2', ru: 'Те же ограничения, что и в 1 и 2 триместрах', ky: '1 жана 2-триместрдегидей эле чектөөлөр'),
        L3(en: 'Any alcohol or cigarettes', ru: 'Любой алкоголь или сигареты', ky: 'Каалаган алкоголь же тамеки'),
        L3(en: 'Ignoring hunger — your body is working hard', ru: 'Игнорировать голод — ваше тело работает на полную', ky: 'Ачкылыкты этибарсыз калтыруу — денеңиз катуу иштеп жатат'),
      ],
    ),
  };

  // ==========================================================
  // EXERCISE
  // ==========================================================
  static const exerciseByTrimester = <Trimester, TrimesterGuide>{
    Trimester.first: TrimesterGuide(
      title: L3(en: 'Exercise — First Trimester', ru: 'Упражнения — Первый триместр', ky: 'Көнүгүүлөр — Биринчи триместр'),
      icon: Icons.directions_walk,
      color: Color(0xFF9575CD),
      intro: L3(
        en: 'If you exercised before, keep going (with modifications). If new to exercise, start with walking. Aim for 150 minutes of moderate activity per week.',
        ru: 'Если занимались раньше, продолжайте (с модификациями). Если новичок — начните с ходьбы. Цель — 150 минут умеренной активности в неделю.',
        ky: 'Мурда көнүгүү жасасаңыз, улантыңыз (өзгөртүүлөр менен). Жаңы болсоңуз — басуудан баштаңыз. Жумасына 150 мүнөт орточо активдүүлүк.',
      ),
      dos: [
        L3(en: 'Walking — 30 minutes most days', ru: 'Ходьба — 30 минут большинство дней', ky: 'Басуу — көпчүлүк күндөрдө 30 мүнөт'),
        L3(en: 'Prenatal yoga (look for certified instructors)', ru: 'Пренатальная йога (ищите сертифицированных инструкторов)', ky: 'Кош бойлуулар йогасы (сертификаттуу инструкторлорду издеңиз)'),
        L3(en: 'Swimming (once cleared by doctor)', ru: 'Плавание (после разрешения врача)', ky: 'Сүзүү (дарыгер уруксат бергенден кийин)'),
        L3(en: 'Stationary biking', ru: 'Велотренажёр', ky: 'Стационардык велосипед'),
        L3(en: 'Light strength training', ru: 'Лёгкие силовые тренировки', ky: 'Жеңил күч көнүгүүлөрү'),
        L3(en: 'Kegel exercises daily', ru: 'Упражнения Кегеля ежедневно', ky: 'Кегел көнүгүүлөрү күн сайын'),
        L3(en: 'Listen to your body — rest when tired', ru: 'Слушайте своё тело — отдыхайте при усталости', ky: 'Денеңизди угуңуз — чарчасаңыз эс алыңыз'),
      ],
      donts: [
        L3(en: 'Contact sports (soccer, basketball)', ru: 'Контактные виды спорта (футбол, баскетбол)', ky: 'Контакттуу спорт (футбол, баскетбол)'),
        L3(en: 'Activities with fall risk (skiing, horseback)', ru: 'Занятия с риском падения (лыжи, верховая езда)', ky: 'Жыгылуу коркунучу бар иш-аракеттер (лыжа, ат минүү)'),
        L3(en: 'Hot yoga or hot Pilates', ru: 'Горячая йога или горячий пилатес', ky: 'Ысык йога же ысык пилатес'),
        L3(en: 'Scuba diving', ru: 'Дайвинг', ky: 'Дайвинг'),
        L3(en: 'Lying flat on back after 16 weeks', ru: 'Лежать на спине после 16 недель', ky: '16 жумадан кийин аркага жатуу'),
        L3(en: 'Overexertion — you should be able to talk', ru: 'Перенапряжение — вы должны мочь разговаривать', ky: 'Ашыкча күч жумшоо — сүйлөшө алышыңыз керек'),
        L3(en: 'Ignoring dizziness, bleeding, or pain', ru: 'Игнорировать головокружение, кровотечение или боль', ky: 'Баш айлануу, кан кетүү же оорууну этибарсыз калтыруу'),
      ],
    ),
    Trimester.second: TrimesterGuide(
      title: L3(en: 'Exercise — Second Trimester', ru: 'Упражнения — Второй триместр', ky: 'Көнүгүүлөр — Экинчи триместр'),
      icon: Icons.directions_walk,
      color: Color(0xFF5BBCB4),
      intro: L3(
        en: 'You likely feel better. Continue moderate exercise 30 minutes most days. Focus on posture, core support, and pelvic floor.',
        ru: 'Вам, вероятно, лучше. Продолжайте умеренные упражнения 30 минут большинство дней. Фокус на осанке, поддержке кора и тазового дна.',
        ky: 'Сиз жакшыраак сезесиз. Көпчүлүк күндөрдө 30 мүнөт орточо көнүгүүнү улантыңыз. Дене кармоо, кор колдоо жана жамбаш түбүнө көңүл буруңуз.',
      ),
      dos: [
        L3(en: 'Walking, swimming, prenatal yoga', ru: 'Ходьба, плавание, пренатальная йога', ky: 'Басуу, сүзүү, кош бойлуулар йогасы'),
        L3(en: 'Side-lying exercises instead of back', ru: 'Упражнения на боку вместо спины', ky: 'Аркага эмес, капталга жатып көнүгүүлөр'),
        L3(en: 'Squats (great for birth prep)', ru: 'Приседания (отлично для подготовки к родам)', ky: 'Отуруп-туруулар (төрөткө даярдык үчүн сонун)'),
        L3(en: 'Pelvic tilts and cat-cow', ru: 'Наклоны таза и «кошка-корова»', ky: 'Жамбаш ийилүүлөрү жана «мышык-уй»'),
        L3(en: 'Light weights (focus on form)', ru: 'Лёгкие гантели (фокус на технике)', ky: 'Жеңил салмактар (техникага көңүл буруу)'),
        L3(en: 'Stretching — hamstrings, hips, shoulders', ru: 'Растяжка — бёдра, тазобедренные, плечи', ky: 'Созулуу — жамбаш, бут, ийин'),
        L3(en: 'Warm up and cool down always', ru: 'Всегда разогревайтесь и заминайтесь', ky: 'Дайыма ысытуу жана муздатуу'),
      ],
      donts: [
        L3(en: 'Abdominal crunches (use modifications)', ru: 'Скручивания на пресс (используйте модификации)', ky: 'Пресске ийилүү (модификацияларды колдонуңуз)'),
        L3(en: 'Exercises requiring balance if dizzy', ru: 'Упражнения на баланс при головокружении', ky: 'Баш айланса тең салмактуулук көнүгүүлөрү'),
        L3(en: 'Heavy lifting', ru: 'Поднятие тяжестей', ky: 'Оор көтөрүү'),
        L3(en: 'Bouncing or jarring movements', ru: 'Прыжки или резкие движения', ky: 'Секирүү же күчтүү кыймылдар'),
        L3(en: 'Overheating — drink water, take breaks', ru: 'Перегрев — пейте воду, делайте перерывы', ky: 'Ысып кетүү — суу ичиңиз, тыныгуу жасаңыз'),
        L3(en: 'Pushing through pain', ru: 'Заниматься через боль', ky: 'Ооруга карабай машыгуу'),
        L3(en: 'Isolated ab work — focus on core stability', ru: 'Изолированная работа на пресс — фокус на стабилизации кора', ky: 'Жалгыз пресс иши — кор туруктуулугуна көңүл буруу'),
      ],
    ),
    Trimester.third: TrimesterGuide(
      title: L3(en: 'Exercise — Third Trimester', ru: 'Упражнения — Третий триместр', ky: 'Көнүгүүлөр — Үчүнчү триместр'),
      icon: Icons.directions_walk,
      color: Color(0xFF78909C),
      intro: L3(
        en: 'Movement is still important but slower and gentler. Exercise prepares you for labor and eases back pain.',
        ru: 'Движение по-прежнему важно, но медленнее и мягче. Упражнения подготовят вас к родам и облегчат боль в спине.',
        ky: 'Кыймыл дагы эле маанилүү, бирок жайыраак жана жумшагыраак. Көнүгүүлөр сизди төрөткө даярдайт жана арка ооруну жеңилдетет.',
      ),
      dos: [
        L3(en: 'Walking daily (even short walks)', ru: 'Ходьба ежедневно (даже короткие прогулки)', ky: 'Күн сайын басуу (кыска сейилдөөлөр да)'),
        L3(en: 'Prenatal yoga or stretching', ru: 'Пренатальная йога или растяжка', ky: 'Кош бойлуулар йогасы же созулуу'),
        L3(en: 'Pelvic floor exercises', ru: 'Упражнения для тазового дна', ky: 'Жамбаш түбү көнүгүүлөрү'),
        L3(en: 'Birthing ball sitting/bouncing', ru: 'Сидение/подпрыгивание на мяче для родов', ky: 'Төрөт тобунда отуруу/секирүү'),
        L3(en: 'Swimming (low-impact, relieves weight)', ru: 'Плавание (низкая нагрузка, снимает вес)', ky: 'Сүзүү (аз жүктөмө, салмакты жеңилдетет)'),
        L3(en: 'Breathing exercises for labor', ru: 'Дыхательные упражнения для родов', ky: 'Төрөт үчүн дем алуу көнүгүүлөрү'),
        L3(en: 'Rest as needed — listen to your body', ru: 'Отдыхайте по необходимости — слушайте тело', ky: 'Зарылдыкка жараша эс алыңыз — денеңизди угуңуз'),
      ],
      donts: [
        L3(en: 'High-impact activities', ru: 'Высокоударные нагрузки', ky: 'Күчтүү таасирдүү иш-аракеттер'),
        L3(en: 'New sports or intense classes', ru: 'Новые виды спорта или интенсивные занятия', ky: 'Жаңы спорт түрлөрү же интенсивдүү сабактар'),
        L3(en: 'Ignoring Braxton Hicks during exercise', ru: 'Игнорировать схватки Брэкстона-Хикса во время упражнений', ky: 'Көнүгүү учурунда Брэкстон-Хикс толголорун этибарсыз калтыруу'),
        L3(en: 'Exercising to exhaustion', ru: 'Заниматься до изнеможения', ky: 'Чарчаганга чейин машыгуу'),
        L3(en: 'Supine positions (flat on back)', ru: 'Положение лёжа на спине', ky: 'Аркага жатуу позициясы'),
        L3(en: 'Activities that strain your belly', ru: 'Занятия, нагружающие живот', ky: 'Курсакка чыңалуу берген иш-аракеттер'),
        L3(en: 'Pushing through pelvic pain', ru: 'Заниматься через тазовую боль', ky: 'Жамбаш оорусуна карабай машыгуу'),
      ],
    ),
  };

  // ==========================================================
  // PARTNER TIPS
  // ==========================================================
  static const partnerTipsByTrimester = <Trimester, TrimesterGuide>{
    Trimester.first: TrimesterGuide(
      title: L3(en: 'For Partners — First Trimester', ru: 'Для партнёров — Первый триместр', ky: 'Жубайлар үчүн — Биринчи триместр'),
      icon: Icons.diversity_2,
      color: Color(0xFFE8787A),
      intro: L3(
        en: "She looks the same but her body is working overtime. Symptoms are intense, and pregnancy is often a secret. Your support matters most now.",
        ru: 'Она выглядит так же, но её тело работает на пределе. Симптомы сильные, и беременность часто ещё в тайне. Ваша поддержка сейчас важнее всего.',
        ky: 'Ал мурункудай көрүнөт, бирок денеси ашыкча иштеп жатат. Белгилер күчтүү жана кош бойлуулук көбүнчө дагы сыр. Сиздин колдооңуз азыр абдан маанилүү.',
      ),
      dos: [
        L3(en: 'Go to the first prenatal appointments', ru: 'Ходите на первые визиты к врачу', ky: 'Биринчи дарыгерге барууга чогуу барыңыз'),
        L3(en: 'Take over chores with strong smells (cooking, trash)', ru: 'Возьмите на себя дела с сильными запахами (готовка, мусор)', ky: 'Күчтүү жыттуу иштерди аткарыңыз (тамак бышыруу, таштанды)'),
        L3(en: 'Stock the fridge with foods she can tolerate', ru: 'Наполните холодильник едой, которую она переносит', ky: 'Тоңдургучка ал чыдай алган тамактарды толтуруңуз'),
        L3(en: 'Be flexible with meals — her cravings will shift', ru: 'Будьте гибкими с едой — её предпочтения будут меняться', ky: 'Тамак менен ийкемдүү болуңуз — каалоолору өзгөрөт'),
        L3(en: 'Offer water, snacks, and rest without being asked', ru: 'Предлагайте воду, перекусы и отдых без просьб', ky: 'Суранбай эле суу, тамак арасы жана эс алуу сунуштаңыз'),
        L3(en: "Keep the pregnancy confidential until she's ready", ru: 'Сохраняйте тайну беременности, пока она не будет готова', ky: 'Ал даяр болгонго чейин кош бойлуулукту сырда сактаңыз'),
        L3(en: 'Research pregnancy together — read this app too', ru: 'Изучайте беременность вместе — читайте это приложение тоже', ky: 'Кош бойлуулукту бирге изилдеңиз — бул колдонмону да окуңуз'),
      ],
      donts: [
        L3(en: 'Take mood swings personally', ru: 'Принимать перепады настроения на свой счёт', ky: 'Маанай өзгөрүүлөрүн жеке кабыл алуу'),
        L3(en: 'Question her food aversions ("but you used to love it!")', ru: 'Ставить под сомнение её неприязнь к еде ("но ты же раньше это любила!")', ky: 'Тамакка жийиркенүүсүн суроого алуу ("бирок сен мурда жакшы көрчүсүң!")'),
        L3(en: 'Tell her "you look tired"', ru: 'Говорить "ты выглядишь уставшей"', ky: '"Чарчагандай көрүнөсүң" деп айтуу'),
        L3(en: 'Let her drink or smoke "a little"', ru: 'Позволять ей пить или курить "чуть-чуть"', ky: '"Бир аз" ичүүгө же тамеки чегүүгө уруксат берүү'),
        L3(en: 'Schedule activities without considering her energy', ru: 'Планировать мероприятия, не учитывая её энергию', ky: 'Энергиясын эске албай иш-чараларды пландоо'),
        L3(en: "Forget she's growing a human", ru: 'Забывать, что она выращивает человека', ky: 'Ал адам чоңойтуп жатканын унутуу'),
        L3(en: 'Compare to other pregnancies', ru: 'Сравнивать с другими беременностями', ky: 'Башка кош бойлуулуктар менен салыштыруу'),
      ],
    ),
    Trimester.second: TrimesterGuide(
      title: L3(en: 'For Partners — Second Trimester', ru: 'Для партнёров — Второй триместр', ky: 'Жубайлар үчүн — Экинчи триместр'),
      icon: Icons.diversity_2,
      color: Color(0xFF5BBCB4),
      intro: L3(
        en: 'The "honeymoon trimester." Energy returns, bump appears, first kicks come. This is bonding time — for you both.',
        ru: '«Медовый триместр». Энергия возвращается, появляется животик, первые шевеления. Это время сближения — для вас обоих.',
        ky: '«Бал ай триместри». Энергия кайтат, курсак чыгат, биринчи тебүүлөр. Бул жакындашуу убактысы — экөөңүз үчүн.',
      ),
      dos: [
        L3(en: 'Go to the anatomy scan (huge moment)', ru: 'Идите на анатомическое УЗИ (важный момент)', ky: 'Анатомиялык УЗИге барыңыз (маанилүү учур)'),
        L3(en: 'Talk to the bump — baby hears you from week 24', ru: 'Говорите с животиком — малыш слышит с 24 недели', ky: 'Курсакка сүйлөңүз — бала 24-жумадан угат'),
        L3(en: 'Feel the kicks together', ru: 'Чувствуйте шевеления вместе', ky: 'Тебүүлөрдү бирге сезиңиз'),
        L3(en: 'Plan a babymoon if possible', ru: 'Запланируйте «бэбимун» если возможно', ky: 'Мүмкүн болсо «бэбимун» пландаңыз'),
        L3(en: 'Paint the nursery together', ru: 'Покрасьте детскую вместе', ky: 'Бала бөлмөсүн бирге боёңуз'),
        L3(en: "Read pregnancy books — understand her body", ru: 'Читайте книги о беременности — понимайте её тело', ky: 'Кош бойлуулук китептерин окуңуз — денесин түшүнүңүз'),
        L3(en: 'Start setting up baby gear', ru: 'Начните устанавливать детские вещи', ky: 'Бала буюмдарын орнотууну баштаңыз'),
      ],
      donts: [
        L3(en: 'Assume she\'s "fine" now — still tired, sore', ru: 'Думать, что ей уже "хорошо" — всё ещё устаёт, болит', ky: '"Жакшы" деп ойлоо — дагы эле чарчоо, ооруу бар'),
        L3(en: "Forget to appreciate her", ru: 'Забывать ценить её', ky: 'Аны баалоону унутуу'),
        L3(en: 'Miss appointments if you can help it', ru: 'Пропускать визиты к врачу, если можете не пропускать', ky: 'Мүмкүн болсо дарыгерге барууну калтырбаңыз'),
        L3(en: 'Let visitors overwhelm her', ru: 'Позволять гостям утомлять её', ky: 'Конокторго аны чарчатууга уруксат берүү'),
        L3(en: "Push for decisions she's not ready to make", ru: 'Торопить с решениями, к которым она не готова', ky: 'Ал даяр эмес чечимдерди шаштыруу'),
        L3(en: "Compare her bump to others'", ru: 'Сравнивать её животик с другими', ky: 'Курсагын башкалардыкы менен салыштыруу'),
        L3(en: 'Ignore her mental health', ru: 'Игнорировать её ментальное здоровье', ky: 'Психикалык ден соолугун этибарсыз калтыруу'),
      ],
    ),
    Trimester.third: TrimesterGuide(
      title: L3(en: 'For Partners — Third Trimester', ru: 'Для партнёров — Третий триместр', ky: 'Жубайлар үчүн — Үчүнчү триместр'),
      icon: Icons.diversity_2,
      color: Color(0xFF9575CD),
      intro: L3(
        en: "She's uncomfortable, anxious, and nesting. Birth is close. Your calm, helpful presence is now the most important thing.",
        ru: 'Ей некомфортно, тревожно, и она «гнездится». Роды близко. Ваше спокойное, помогающее присутствие сейчас — самое важное.',
        ky: 'Ал ыңгайсыз, тынчсыз жана «уя жасап» жатат. Төрөт жакын. Сиздин тынч, жардамчыл катышуулуңуз азыр эң маанилүү нерсе.',
      ),
      dos: [
        L3(en: "Do EVERY physical chore — she can't bend", ru: 'Делайте ВСЮ физическую работу — она не может наклоняться', ky: 'БАРДЫК физикалык жумушту жасаңыз — ал ийиле албайт'),
        L3(en: 'Give foot and back massages nightly', ru: 'Делайте массаж стоп и спины каждый вечер', ky: 'Ар кечте бут жана арка массажын жасаңыз'),
        L3(en: 'Practice the birth plan together', ru: 'Репетируйте план родов вместе', ky: 'Төрөт планын бирге машыктырыңыз'),
        L3(en: 'Tour the hospital together', ru: 'Осмотрите роддом вместе', ky: 'Ооруканага бирге саякаттаңыз'),
        L3(en: 'Install the car seat — inspected!', ru: 'Установите автокресло — проверенное!', ky: 'Унаа отургучун орнотуңуз — текшерилген!'),
        L3(en: 'Pack YOUR hospital bag', ru: 'Соберите СВОЮ сумку в роддом', ky: 'ӨЗҮҢҮЗДҮН ооруканадагы баштыгыңызды чогултуңуз'),
        L3(en: 'Stay within 30 min of her at 37+ weeks', ru: 'Будьте в 30 мин от неё на 37+ неделях', ky: '37+ жумалыкта андан 30 мүнөт аралыкта болуңуз'),
      ],
      donts: [
        L3(en: 'Take her snapping personally', ru: 'Принимать её резкость на свой счёт', ky: 'Анын кыжырдануусун жеке кабыл алуу'),
        L3(en: 'Get frustrated by nesting requests', ru: 'Раздражаться от просьб по «гнездованию»', ky: '«Уя жасоо» суроолорунан ачууланбаңыз'),
        L3(en: 'Travel far without telling her', ru: 'Далеко уезжать, не сообщив ей', ky: 'Айтпай алыска сапар шилтөө'),
        L3(en: 'Postpone the birth plan conversation', ru: 'Откладывать разговор о плане родов', ky: 'Төрөт планы жөнүндө маекти кийинкиге калтыруу'),
        L3(en: 'Drink or stay out late near due date', ru: 'Пить или допоздна гулять перед ПДР', ky: 'Мөөнөт жакындаганда ичүү же кечке чейин жүрүү'),
        L3(en: 'Let visitors overstay', ru: 'Позволять гостям засиживаться', ky: 'Конокторго ашыкча отурууга уруксат берүү'),
        L3(en: 'Forget to take care of yourself too', ru: 'Забывать заботиться и о себе тоже', ky: 'Өзүңүзгө да кам көрүүнү унутуу'),
      ],
    ),
  };

  static TrimesterGuide nutritionFor(int week) =>
      nutritionByTrimester[Trimester.fromWeek(week)]!;

  static TrimesterGuide exerciseFor(int week) =>
      exerciseByTrimester[Trimester.fromWeek(week)]!;

  static TrimesterGuide partnerTipsFor(int week) =>
      partnerTipsByTrimester[Trimester.fromWeek(week)]!;
}
