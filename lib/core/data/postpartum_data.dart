import 'package:flutter/material.dart';
import '../l10n/content_localizations.dart';

/// Postpartum self-care content for new moms.
/// Balam.AI is also for mom's recovery — not just baby care.
class PostpartumTopic {
  final String id;
  final L3 title;
  final L3 shortDescription;
  final IconData icon;
  final Color color;
  final L3 content;
  final List<L3> quickTips;
  final List<L3> redFlags;

  const PostpartumTopic({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.icon,
    required this.color,
    required this.content,
    required this.quickTips,
    this.redFlags = const [],
  });
}

class PostpartumData {
  PostpartumData._();

  static const topics = <PostpartumTopic>[
    PostpartumTopic(
      id: 'healing',
      title: L3(en: 'Physical Healing', ru: 'Физическое восстановление', ky: 'Дене калыбына келтирүү'),
      shortDescription: L3(
        en: 'Your body just did the hardest thing. It needs time.',
        ru: 'Ваше тело только что совершило подвиг. Ему нужно время.',
        ky: 'Денеңиз эң оор ишти жасады. Ага убакыт керек.',
      ),
      icon: Icons.favorite,
      color: Color(0xFFE8787A),
      content: L3(
        en: 'Postpartum recovery takes 6-12 weeks \u2014 sometimes longer. Be patient with yourself.\n\n'
            'After vaginal birth: bleeding (lochia) for 4-6 weeks, perineal soreness, swelling. '
            'After C-section: incision care for 6+ weeks, no heavy lifting, slower healing.\n\n'
            'You will see blood, swelling, and changes you didn\'t expect. This is all normal. '
            'Your uterus takes 6 weeks to return to its pre-pregnancy size. '
            'Hormonal shifts affect your hair, skin, mood, and sleep.\n\n'
            'This is NOT the time to "bounce back." This is the time to heal.',
        ru: 'Послеродовое восстановление занимает 6-12 недель \u2014 иногда дольше. Будьте терпеливы к себе.\n\n'
            'После естественных родов: кровотечение (лохии) 4-6 недель, болезненность промежности, отёки. '
            'После кесарева: уход за швом 6+ недель, нельзя поднимать тяжёлое, заживление медленнее.\n\n'
            'Вы увидите кровь, отёки и изменения, которых не ожидали. Это всё нормально. '
            'Матке нужно 6 недель, чтобы вернуться к прежнему размеру. '
            'Гормональные изменения влияют на волосы, кожу, настроение и сон.\n\n'
            'Сейчас НЕ время «возвращаться в форму». Сейчас время исцеляться.',
        ky: 'Төрөттөн кийинки калыбына келтирүү 6-12 жума созулат \u2014 кээде узагыраак. Өзүңүзгө сабырдуу болуңуз.\n\n'
            'Табигый төрөттөн кийин: кан агуу (лохия) 4-6 жума, промежность ооруйт, шишик. '
            'Кесарь бөлүктөн кийин: тигиш кароо 6+ жума, оор көтөрбөңүз, жай айыгуу.\n\n'
            'Кан, шишик жана күтүлбөгөн өзгөрүүлөрдү көрөсүз. Мунун баары нормалдуу. '
            'Жатыныңыз мурунку өлчөмүнө келиш үчүн 6 жума керек. '
            'Гормоналдык өзгөрүүлөр чачка, териге, маанайга жана уйкуга таасир этет.\n\n'
            'Азыр формага кайтуу учуру ЭМЕС. Азыр айыгуу учуру.',
      ),
      quickTips: [
        L3(en: 'Rest whenever baby rests \u2014 dishes can wait', ru: 'Отдыхайте, когда малыш спит \u2014 посуда подождёт', ky: 'Бөбөк уктаганда эс алыңыз \u2014 идиштер күтөт'),
        L3(en: 'Ice pads (padsicles) soothe perineal swelling', ru: 'Ледяные прокладки снимают отёк промежности', ky: 'Муздуу тампондор промежность шишигин басат'),
        L3(en: 'Peri bottle for gentle cleaning after using the bathroom', ru: 'Перинеальная бутылочка для мягкого подмывания', ky: 'Даараткана кийин жумшак жуунуу үчүн перинеалдык бөтөлкө'),
        L3(en: 'Stool softeners help with first postpartum bowel movement', ru: 'Слабительное помогает с первым послеродовым стулом', ky: 'Жумшартуучу каражаттар төрөттөн кийинки биринчи зааралоодо жардам берет'),
        L3(en: 'Sitz baths 2-3x daily for 10 minutes', ru: 'Сидячие ванночки 2-3 раза в день по 10 минут', ky: 'Отурма ваннада күнүнө 2-3 жолу 10 мүнөт'),
        L3(en: 'Accept ALL help offered \u2014 cooking, cleaning, holding baby', ru: 'Принимайте ВСЮ предложенную помощь \u2014 готовку, уборку, подержать малыша', ky: 'БАРДЫК сунушталган жардамды кабыл алыңыз \u2014 тамак бышыруу, тазалоо, бөбөктү кармоо'),
        L3(en: 'No penetrative sex for 6 weeks (until doctor clears)', ru: 'Никакого проникающего секса 6 недель (до разрешения врача)', ky: '6 жума жыныстык катнаш жок (дарыгер уруксат бермейинче)'),
      ],
      redFlags: [
        L3(en: 'Soaking a pad in an hour or less', ru: 'Прокладка промокает за час или меньше', ky: 'Тампон бир саат же азыраакта суу болот'),
        L3(en: 'Passing large clots (bigger than golf ball)', ru: 'Выход крупных сгустков (больше мяча для гольфа)', ky: 'Чоң уюктар чыгуу (гольф тобунан чоңураак)'),
        L3(en: 'Fever over 38\u00b0C (100.4\u00b0F)', ru: 'Температура выше 38\u00b0C', ky: 'Температура 38\u00b0C ден жогору'),
        L3(en: 'Foul-smelling discharge', ru: 'Неприятный запах выделений', ky: 'Жаман жыттуу бөлүнүү'),
        L3(en: 'Severe headache, vision changes, or swelling', ru: 'Сильная головная боль, нарушения зрения или отёки', ky: 'Катуу баш ооруу, көрүүнүн өзгөрүүсү же шишик'),
        L3(en: 'Chest pain or shortness of breath', ru: 'Боль в груди или одышка', ky: 'Көкүрөк ооруу же дем алуу кыйынчылыгы'),
        L3(en: 'Redness, warmth, or hardness in leg (blood clot signs)', ru: 'Покраснение, тепло или уплотнение в ноге (признаки тромба)', ky: 'Буттун кызаруусу, жылуулугу же катуулугу (тромб белгилери)'),
      ],
    ),

    PostpartumTopic(
      id: 'mental-health',
      title: L3(en: 'Mental Health', ru: 'Психическое здоровье', ky: 'Психикалык ден соолук'),
      shortDescription: L3(
        en: 'Baby blues vs. postpartum depression. Know the difference.',
        ru: 'Послеродовая хандра или депрессия. Знайте разницу.',
        ky: 'Төрөттөн кийинки маанай түшкүндүк же депрессия. Айырмасын билиңиз.',
      ),
      icon: Icons.psychology,
      color: Color(0xFF9575CD),
      content: L3(
        en: '80% of new moms get the baby blues \u2014 mood swings, tearfulness, irritability, '
            'anxiety \u2014 starting days 3-5 after birth. It should resolve within 2 weeks.\n\n'
            'If it lasts longer than 2 weeks, or if you feel hopeless, disconnected from baby, '
            "or have scary thoughts \u2014 that's postpartum depression or anxiety. "
            'It affects 1 in 7 mothers. It is TREATABLE. You are not broken. You are not a bad mom.\n\n'
            'Postpartum rage, postpartum OCD, and postpartum psychosis also exist. '
            'All are treatable. None are your fault.\n\n'
            'Asking for help is the bravest thing you can do.',
        ru: 'У 80% мам бывает послеродовая хандра \u2014 перепады настроения, плаксивость, раздражительность, '
            'тревога \u2014 на 3-5 день после родов. Обычно проходит за 2 недели.\n\n'
            'Если длится дольше 2 недель, или вы чувствуете безнадёжность, отстранённость от малыша, '
            'или пугающие мысли \u2014 это послеродовая депрессия или тревога. '
            'Ей подвержена каждая 7-я мама. Это ЛЕЧИТСЯ. Вы не сломаны. Вы не плохая мама.\n\n'
            'Послеродовая ярость, ОКР и послеродовой психоз тоже существуют. '
            'Всё лечится. Ничто не ваша вина.\n\n'
            'Просить о помощи \u2014 самый смелый поступок.',
        ky: 'Жаңы энелердин 80% төрөттөн кийинки маанай түшкүндүккө кабылат \u2014 маанай алмашуу, ыйлагычтык, '
            'тажатуу, тынчсыздануу \u2014 төрөттөн 3-5 күн кийин башталат. 2 жуманын ичинде өтүшү керек.\n\n'
            'Эгер 2 жумадан ашык созулса, же үмүтсүздүк, бөбөктөн алыстоо сезсеңиз, '
            'же коркунучтуу ойлор болсо \u2014 бул төрөттөн кийинки депрессия же тынчсызданма. '
            'Ар 7 энеден бирине таасир этет. ДАРЫЛАНАТ. Сиз сынган эмессиз. Жаман эне эмессиз.\n\n'
            'Төрөттөн кийинки ачуулануу, ОКР жана психоз да болот. '
            'Баары дарыланат. Эч нерсе сиздин күнөөңүз эмес.\n\n'
            'Жардам суроо \u2014 эң эрдиктүү иш.',
      ),
      quickTips: [
        L3(en: 'Track your mood daily in this app', ru: 'Отслеживайте настроение каждый день в приложении', ky: 'Маанайыңызды күн сайын колдонмодо байкаңыз'),
        L3(en: "Tell your partner exactly how you're feeling", ru: 'Расскажите партнёру, как вы себя чувствуете', ky: 'Жубайыңызга сезимиңизди так айтыңыз'),
        L3(en: 'Get outside every day \u2014 even just to the porch', ru: 'Выходите на улицу каждый день \u2014 хотя бы на крыльцо', ky: 'Күн сайын сыртка чыгыңыз \u2014 жок дегенде босогого'),
        L3(en: 'Sleep is medicine. Tag-team with partner for naps.', ru: 'Сон \u2014 это лекарство. Спите по очереди с партнёром.', ky: 'Уйку \u2014 дары. Жубайыңыз менен кезектешип уктаңыз.'),
        L3(en: 'Limit visitors if they drain you', ru: 'Ограничьте гостей, если они утомляют', ky: 'Конокторду чектеңиз, алар чарчатса'),
        L3(en: "Join a moms' group (online or local)", ru: 'Вступите в группу мам (онлайн или рядом)', ky: 'Энелер тобуна кошулуңуз (онлайн же жергиликтүү)'),
        L3(en: 'Talk to your OB at every visit about your mental health', ru: 'На каждом визите говорите гинекологу о своём состоянии', ky: 'Ар бир барышта гинекологго психикалык абалыңыз тууралуу айтыңыз'),
      ],
      redFlags: [
        L3(en: 'Feeling sad/empty every day for 2+ weeks', ru: 'Чувство грусти/пустоты каждый день 2+ недели', ky: 'Күн сайын 2+ жума кайгы/бош сезим'),
        L3(en: 'Thoughts of harming yourself or baby', ru: 'Мысли о причинении вреда себе или малышу', ky: 'Өзүңүзгө же бөбөккө зыян келтирүү ойлору'),
        L3(en: 'Unable to sleep even when baby sleeps', ru: 'Не можете спать, даже когда малыш спит', ky: 'Бөбөк уктаганда да уктай албоо'),
        L3(en: 'Panic attacks', ru: 'Панические атаки', ky: 'Паникалык чабуулдар'),
        L3(en: 'Feeling disconnected from baby or reality', ru: 'Чувство отстранённости от малыша или реальности', ky: 'Бөбөктөн же чындыктан алыстоо сезими'),
        L3(en: 'Call doctor IMMEDIATELY for any of these', ru: 'Позвоните врачу НЕМЕДЛЕННО при любом из этих симптомов', ky: 'Мунун кайсынысы болсо да ДАРОО дарыгерге чалыңыз'),
      ],
    ),

    PostpartumTopic(
      id: 'sleep',
      title: L3(en: 'Sleep & Exhaustion', ru: 'Сон и усталость', ky: 'Уйку жана чарчоо'),
      shortDescription: L3(
        en: "Sleep deprivation is real. Here's how to survive.",
        ru: 'Недосып \u2014 это реально. Вот как выжить.',
        ky: 'Уйку жетишсиздиги чыныгы. Мына аман калуу жолу.',
      ),
      icon: Icons.bedtime,
      color: Color(0xFF5BBCB4),
      content: L3(
        en: 'You will lose sleep. A lot of it. First 2 weeks: you might get 2-3 hour stretches at best.\n\n'
            'Strategy: abandon the idea of "a night of sleep." Think in chunks. Four 2-hour chunks = 8 hours.\n\n'
            "Sleep when baby sleeps \u2014 during the day, at 4pm, whenever. Don't clean. Don't scroll your phone. Sleep.\n\n"
            'Tag-team with your partner. One person handles nights for 4 hours, the other handles the next 4. '
            'If breastfeeding, partner can change the diaper and bring baby to you.',
        ru: 'Вы будете терять сон. Много. Первые 2 недели: в лучшем случае отрезки по 2-3 часа.\n\n'
            'Стратегия: забудьте про «полноценный ночной сон». Думайте отрезками. Четыре по 2 часа = 8 часов.\n\n'
            'Спите, когда спит малыш \u2014 днём, в 16:00, когда угодно. Не убирайте. Не листайте телефон. Спите.\n\n'
            'Работайте в паре. Один дежурит 4 часа ночью, потом другой. '
            'При грудном вскармливании партнёр может менять подгузник и приносить малыша.',
        ky: 'Уйкудан ажырайсыз. Көп. Биринчи 2 жума: эң жакшысы 2-3 сааттык уйку.\n\n'
            'Стратегия: «бир түн бою уйку» идеясын унутуңуз. Бөлүктөр менен ойлонуңуз. Төрт 2 сааттык = 8 саат.\n\n'
            'Бөбөк уктаганда уктаңыз \u2014 күндүз, саат 4 тө, качан болсо. Тазалабаңыз. Телефон карабаңыз. Уктаңыз.\n\n'
            'Жубайыңыз менен кезектешиңиз. Бирөө 4 саат түнкү кезмет, экинчиси кийинки 4 саат. '
            'Эмизип жатсаңыз, жубайыңыз подгузник алмаштырып, бөбөктү алып келсин.',
      ),
      quickTips: [
        L3(en: 'Go to bed at 8pm. Yes, really.', ru: 'Ложитесь в 20:00. Да, серьёзно.', ky: 'Саат 20:00 да жатыңыз. Ооба, чын.'),
        L3(en: "Black-out curtains \u2014 both your room AND baby's", ru: 'Блэкаут-шторы \u2014 и вам, и малышу', ky: 'Караңгылатуучу парда \u2014 сизге да, бөбөккө да'),
        L3(en: "White noise for baby's naps and nights", ru: 'Белый шум для дневного и ночного сна малыша', ky: 'Бөбөктүн күндүзгү жана түнкү уйкусу үчүн ак ызы-чуу'),
        L3(en: 'Keep phone out of bed', ru: 'Телефон \u2014 подальше от кровати', ky: 'Телефонду төшөктөн алыс кармаңыз'),
        L3(en: 'Take a 20-minute nap, not 1-hour (avoids sleep inertia)', ru: '20-минутный сон вместо часового (избегайте инерции сна)', ky: '1 сааттык эмес, 20 мүнөттүк уйку (уйку инерциясынан качыңыз)'),
        L3(en: 'One parent sleeps through the first shift', ru: 'Один родитель спит в первую смену', ky: 'Бир ата-эне биринчи кезмет учурунда уктайт'),
        L3(en: 'No caffeine after 2pm', ru: 'Никакого кофеина после 14:00', ky: 'Саат 14:00 дөн кийин кофеин жок'),
      ],
    ),

    PostpartumTopic(
      id: 'nutrition',
      title: L3(en: 'Nutrition & Hydration', ru: 'Питание и гидратация', ky: 'Тамактануу жана суу балансы'),
      shortDescription: L3(
        en: 'Fuel your recovery. Especially if breastfeeding.',
        ru: 'Питайте восстановление. Особенно если кормите грудью.',
        ky: 'Калыбына келүүнү тамактандырыңыз. Айрыкча эмизип жатсаңыз.',
      ),
      icon: Icons.restaurant,
      color: Color(0xFFF5C15A),
      content: L3(
        en: 'If breastfeeding, you need ~500 extra calories/day and LOTS of water. '
            'Aim for 12-13 glasses of water daily.\n\n'
            'Focus on: iron-rich foods (replace blood loss), protein (tissue repair), '
            'omega-3s (mood and brain), calcium (bones), and healthy fats.\n\n'
            "Don't diet. Don't restrict. This is the time to EAT.",
        ru: 'При грудном вскармливании нужно ~500 дополнительных калорий/день и МНОГО воды. '
            'Цель: 12-13 стаканов воды в день.\n\n'
            'Фокус: продукты с железом (восполнение крови), белок (восстановление тканей), '
            'омега-3 (настроение и мозг), кальций (кости) и полезные жиры.\n\n'
            'Не сидите на диете. Не ограничивайте себя. Сейчас время ЕСТЬ.',
        ky: 'Эмизип жатсаңыз, күнүнө ~500 кошумча калория жана КӨП суу керек. '
            'Күнүнө 12-13 стакан суу ичиңиз.\n\n'
            'Көңүл буруңуз: темирге бай тамак (кан жоготууну толтуруу), белок (ткань калыбына келтирүү), '
            'омега-3 (маанай жана мээ), кальций (сөөк) жана пайдалуу майлар.\n\n'
            'Диета кармабаңыз. Чектебеңиз. Азыр ЖЕГЕНГЕ убакыт.',
      ),
      quickTips: [
        L3(en: 'Freeze meals before birth \u2014 thank yourself later', ru: 'Заморозьте еду до родов \u2014 скажете себе спасибо', ky: 'Төрөт алдында тамак тоңдуруп коюңуз \u2014 кийин өзүңүзгө ыраазы болосуз'),
        L3(en: "Keep snacks near the couch and bed (where you'll be nursing)", ru: 'Держите перекусы рядом с диваном и кроватью (где будете кормить)', ky: 'Тамак-ашты диван жана керебеттин жанында кармаңыз (эмизе турган жериңизде)'),
        L3(en: 'Oatmeal + flax seeds boost milk supply', ru: 'Овсянка + семена льна увеличивают молоко', ky: 'Сулу ботко + зыгыр данегин сүт көбөйтөт'),
        L3(en: 'Bone broth, lentils, spinach for iron', ru: 'Костный бульон, чечевица, шпинат для железа', ky: 'Сөөк бульону, жашыл буурчак, шпинат темир үчүн'),
        L3(en: 'Salmon, walnuts, chia for omega-3', ru: 'Лосось, грецкие орехи, чиа для омега-3', ky: 'Лосось, грек жаңгагы, чиа омега-3 үчүн'),
        L3(en: 'Drink a full glass of water every time you nurse', ru: 'Пейте полный стакан воды каждый раз, когда кормите', ky: 'Ар эмизген сайын бир стакан суу ичиңиз'),
        L3(en: 'Lactation cookies are hype but fine for a treat', ru: 'Лактационное печенье \u2014 хайп, но как лакомство можно', ky: 'Лактация печенеси \u2014 хайп, бирок тамак-аш катары болот'),
      ],
    ),

    PostpartumTopic(
      id: 'breastfeeding',
      title: L3(en: 'Breastfeeding', ru: 'Грудное вскармливание', ky: 'Эмизүү'),
      shortDescription: L3(
        en: "It's natural but not always easy.",
        ru: 'Это естественно, но не всегда легко.',
        ky: 'Бул табигый, бирок дайыма оңой эмес.',
      ),
      icon: Icons.child_care,
      color: Color(0xFFEC407A),
      content: L3(
        en: 'Breastfeeding is a learned skill \u2014 for both you and baby. Give it 4-6 weeks.\n\n'
            "Colostrum (first milk) is tiny in volume \u2014 1-2 teaspoons. Baby's stomach is the size of a marble. "
            'Milk "comes in" days 3-5, often with engorgement. This passes.\n\n'
            'Cluster feeding is normal. So is cracked nipples (at first). So is crying because feeding hurts. '
            'A lactation consultant can change your life. Find one.\n\n'
            "If breastfeeding isn't working for you \u2014 formula is a valid, safe choice. Fed is best.",
        ru: 'Грудное вскармливание \u2014 навык, которому учатся и мама, и малыш. Дайте 4-6 недель.\n\n'
            'Молозиво (первое молоко) \u2014 мало по объёму, 1-2 чайных ложки. Желудок малыша размером с шарик. '
            'Молоко «приходит» на 3-5 день, часто с нагрубанием. Это проходит.\n\n'
            'Кластерное кормление \u2014 норма. Трещины на сосках (сначала) \u2014 тоже. Плакать от боли при кормлении \u2014 тоже. '
            'Консультант по лактации может изменить жизнь. Найдите его.\n\n'
            'Если ГВ не подходит \u2014 смесь является полноценным, безопасным выбором. Главное \u2014 малыш сыт.',
        ky: 'Эмизүү \u2014 эне да, бөбөк да үйрөнгөн көндүм. 4-6 жума бериңиз.\n\n'
            'Уулдак (биринчи сүт) \u2014 көлөмү аз, 1-2 чай кашыгы. Бөбөктүн ашказаны шарик өлчөмүндө. '
            'Сүт 3-5 күндө «келет», көбүнчө шишүү менен. Бул өтөт.\n\n'
            'Кластердик тамактануу нормалдуу. Эмчек учунун жарылышы да (башында). Тамактандырууда оорудан ыйлоо да. '
            'Лактация консультанты жашоону өзгөртө алат. Таап алыңыз.\n\n'
            'Эмизүү туура келбесе \u2014 аралашма толук кандуу, коопсуз тандоо. Негизгиси \u2014 бөбөк ток.',
      ),
      quickTips: [
        L3(en: "Deep latch: aim baby's chin to your breast", ru: 'Глубокий захват: направляйте подбородок малыша к груди', ky: 'Терең кармоо: бөбөктүн ээгин эмчекке багыттаңыз'),
        L3(en: 'Nipple shields can help if latch hurts', ru: 'Накладки на соски помогут, если захват причиняет боль', ky: 'Кармоо ооруса эмчек калканы жардам берет'),
        L3(en: 'Lanolin cream for cracked nipples', ru: 'Крем с ланолином для потрескавшихся сосков', ky: 'Жарылган эмчек учу үчүн ланолин крем'),
        L3(en: 'Nurse on demand (every 2-3 hours, or more)', ru: 'Кормите по требованию (каждые 2-3 часа или чаще)', ky: 'Талап боюнча эмизиңиз (ар 2-3 саат же көбүрөөк)'),
        L3(en: 'Both sides each feeding in the first weeks', ru: 'Обе груди при каждом кормлении в первые недели', ky: 'Биринчи жумаларда ар эмизүүдө эки эмчек тең'),
        L3(en: 'Hydrate before every nursing session', ru: 'Пейте воду перед каждым кормлением', ky: 'Ар эмизүүдөн мурун суу ичиңиз'),
        L3(en: 'See a lactation consultant in week 1 if pain/trouble', ru: 'При боли/проблемах обратитесь к консультанту по лактации на 1-й неделе', ky: 'Оору/маселе болсо 1-жумада лактация консультантына кайрылыңыз'),
      ],
      redFlags: [
        L3(en: 'Fever + hot, hard, red breast = mastitis, call doctor', ru: 'Температура + горячая, твёрдая, красная грудь = мастит, звоните врачу', ky: 'Температура + ысык, катуу, кызыл эмчек = мастит, дарыгерге чалыңыз'),
        L3(en: "White coating in baby's mouth = thrush, both need treatment", ru: 'Белый налёт во рту малыша = молочница, лечение нужно обоим', ky: 'Бөбөктүн оозундагы ак каптал = молочница, экөөнө тең дарылоо керек'),
        L3(en: 'Baby not wetting 6+ diapers/day = low milk intake', ru: 'Менее 6 мокрых подгузников/день = мало молока', ky: 'Күнүнө 6+ нымдуу подгузник жок = аз сүт'),
        L3(en: 'Cracked bleeding nipples lasting 2+ weeks', ru: 'Кровоточащие трещины на сосках более 2 недель', ky: 'Эмчек учунун жарылып канап 2+ жума созулуусу'),
      ],
    ),

    PostpartumTopic(
      id: 'relationship',
      title: L3(en: 'Your Relationship', ru: 'Ваши отношения', ky: 'Сиздин мамилеңиз'),
      shortDescription: L3(
        en: 'Parenting tests the strongest partnerships.',
        ru: 'Родительство испытывает самые крепкие отношения.',
        ky: 'Ата-энелик эң бекем мамилелерди сынайт.',
      ),
      icon: Icons.diversity_2,
      color: Color(0xFF78909C),
      content: L3(
        en: 'A baby changes everything. Your relationship will shift \u2014 that\'s normal. Some days it will be hard.\n\n'
            'Resentment builds when one partner feels they\'re doing more. Make the invisible work visible. '
            'Talk about division of labor BEFORE it becomes a fight.\n\n'
            'Intimacy will change. It comes back \u2014 but slowly. Connection in other ways matters most.',
        ru: 'Малыш меняет всё. Ваши отношения изменятся \u2014 это нормально. Бывают тяжёлые дни.\n\n'
            'Обида копится, когда один партнёр чувствует, что делает больше. Сделайте невидимую работу видимой. '
            'Обсуждайте разделение обязанностей ДО того, как это станет ссорой.\n\n'
            'Близость изменится. Она вернётся \u2014 но медленно. Связь другими способами важнее всего.',
        ky: 'Бөбөк бардыгын өзгөртөт. Мамилеңиз өзгөрөт \u2014 бул нормалдуу. Кээ бир күндөр оор болот.\n\n'
            'Бир жубай көбүрөөк кылып жатам деп сезгенде нааразычылык чогулат. Көрүнбөгөн жумушту көрүнүктүү кылыңыз. '
            'Милдеттерди бөлүштүрүүнү уруш болгонго чейин ТАЛКУУЛАҢЫЗ.\n\n'
            'Жакындык өзгөрөт. Кайра келет \u2014 бирок жай. Башка жолдор менен байланыш эң маанилүү.',
      ),
      quickTips: [
        L3(en: 'Schedule a daily 10-min check-in with partner', ru: 'Назначьте ежедневные 10 минут для разговора с партнёром', ky: 'Жубайыңыз менен күн сайын 10 мүнөт сүйлөшүүнү пландаңыз'),
        L3(en: 'Say "I need you to do X" (specific, not hints)', ru: 'Говорите «Мне нужно, чтобы ты сделал X» (конкретно, без намёков)', ky: '«Мага X кылышың керек» деңиз (так, ишараларсыз)'),
        L3(en: 'Appreciate out loud \u2014 gratitude is fuel', ru: 'Благодарите вслух \u2014 благодарность даёт силы', ky: 'Үнүңүздү чыгарып ыраазычылык билдириңиз \u2014 ыраазычылык күч берет'),
        L3(en: '"You and me vs. the problem" \u2014 not each other', ru: '«Мы с тобой против проблемы» \u2014 а не друг против друга', ky: '«Сен менен мен маселеге каршы» \u2014 бири-бирине каршы эмес'),
        L3(en: "Accept you'll have different parenting styles", ru: 'Примите, что стили воспитания будут разными', ky: 'Тарбиялоо стилдериңиз ар кандай болорун кабыл алыңыз'),
        L3(en: 'Date night = 30 min on the couch after baby sleeps', ru: 'Свидание = 30 минут на диване после сна малыша', ky: 'Жолугушуу = бөбөк уктагандан кийин диванда 30 мүнөт'),
        L3(en: 'Couples therapy is not failure \u2014 it\'s strength', ru: 'Семейная терапия \u2014 не провал, а сила', ky: 'Жубайлар терапиясы \u2014 жеңилүү эмес, күч'),
      ],
    ),

    PostpartumTopic(
      id: 'identity',
      title: L3(en: 'Your New Identity', ru: 'Ваша новая личность', ky: 'Жаңы инсандыгыңыз'),
      shortDescription: L3(
        en: 'Becoming a mother changes who you are.',
        ru: 'Став мамой, вы меняетесь.',
        ky: 'Эне болуу сизди өзгөртөт.',
      ),
      icon: Icons.face_retouching_natural,
      color: Color(0xFFB39DDB),
      content: L3(
        en: 'Matrescence \u2014 the process of becoming a mother \u2014 is as dramatic as adolescence. '
            "You are rewiring. You are grieving who you were. You are meeting who you're becoming.\n\n"
            "It's OK to miss your old life. It's OK to love your baby AND grieve your freedom. "
            "These feelings coexist. They don't make you a bad mom.\n\n"
            'Your body, brain, and priorities are all shifting. Give yourself radical compassion.',
        ru: 'Матрессенция \u2014 процесс становления матерью \u2014 столь же масштабна, как подростковый возраст. '
            'Вы перестраиваетесь. Вы оплакиваете прежнюю себя. Вы знакомитесь с новой собой.\n\n'
            'Скучать по прежней жизни \u2014 нормально. Любить малыша И горевать по свободе \u2014 нормально. '
            'Эти чувства сосуществуют. Они не делают вас плохой мамой.\n\n'
            'Ваше тело, мозг и приоритеты меняются. Проявите к себе безграничное сострадание.',
        ky: 'Матрессенция \u2014 эне болуу процесси \u2014 өспүрүм курак сыяктуу эле олуттуу. '
            'Сиз кайра курулуп жатасыз. Мурунку өзүңүздү кусап жатасыз. Жаңы өзүңүз менен таанышып жатасыз.\n\n'
            'Мурунку жашооңузду сагынуу \u2014 нормалдуу. Бөбөгүңүздү сүйүп ЖАНА эркиндигиңизди кусоо \u2014 нормалдуу. '
            'Бул сезимдер чогуу жашайт. Алар сизди жаман эне кылбайт.\n\n'
            'Денеңиз, мээңиз жана приоритеттериңиз өзгөрүп жатат. Өзүңүзгө чексиз боорукердик көрсөтүңүз.',
      ),
      quickTips: [
        L3(en: "Write down how you're feeling \u2014 even messy thoughts", ru: 'Записывайте чувства \u2014 даже хаотичные мысли', ky: 'Сезимиңизди жазыңыз \u2014 башаламан ойлорду да'),
        L3(en: 'Keep one hobby alive (10 min a day is enough)', ru: 'Сохраните одно хобби (10 минут в день достаточно)', ky: 'Бир хоббини сактаңыз (күнүнө 10 мүнөт жетиштүү)'),
        L3(en: 'Stay connected to one friend who "gets it"', ru: 'Поддерживайте связь с подругой, которая «понимает»', ky: 'Сизди «түшүнгөн» бир достуңуз менен байланышта болуңуз'),
        L3(en: "Take photos of yourself \u2014 you're always the photographer", ru: 'Фотографируйтесь сами \u2014 вы всегда за кадром', ky: 'Өзүңүздүн сүрөтүңүздү тартыңыз \u2014 сиз дайым фотографсыз'),
        L3(en: 'Ask "what do I need right now?" every morning', ru: 'Спросите «Что мне сейчас нужно?» каждое утро', ky: 'Ар таңда «Азыр мага эмне керек?» деп сураңыз'),
        L3(en: 'Follow creators who normalize postpartum reality', ru: 'Подписывайтесь на блогеров, которые показывают реальность послеродового периода', ky: 'Төрөттөн кийинки чындыкты нормалдаштырган блогерлерди ээрчиңиз'),
        L3(en: 'Therapy is for healthy people too', ru: 'Терапия \u2014 и для здоровых людей тоже', ky: 'Терапия \u2014 соо адамдар үчүн да'),
      ],
    ),
  ];

  static PostpartumTopic? byId(String id) {
    try {
      return topics.firstWhere((t) => t.id == id);
    } catch (_) {
      return null;
    }
  }
}
