import 'package:flutter/material.dart';
import '../l10n/content_localizations.dart';

/// Evidence-based soothing techniques for crying newborns.
/// Content aligned with Dr. Harvey Karp's Happiest Baby methodology,
/// AAP safe sleep guidelines, and common pediatric advice.
class SoothingTechnique {
  final String id;
  final L3 title;
  final L3 shortDescription;
  final IconData icon;
  final Color color;
  final List<SoothingStep> steps;
  final List<L3> whenToUse;
  final List<L3> safetyNotes;

  const SoothingTechnique({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.icon,
    required this.color,
    required this.steps,
    required this.whenToUse,
    this.safetyNotes = const [],
  });
}

class SoothingStep {
  final L3 title;
  final L3 description;

  const SoothingStep({required this.title, required this.description});
}

class SoothingTechniquesData {
  SoothingTechniquesData._();

  static const techniques = <SoothingTechnique>[
    // The 5 S's — core method
    SoothingTechnique(
      id: 'five-s',
      title: L3(en: "The 5 S's", ru: '5 «С» методика', ky: '5 «С» ыкмасы'),
      shortDescription: L3(
        en: "Dr. Harvey Karp's proven method \u2014 the fourth trimester survival guide",
        ru: 'Проверенный метод доктора Харви Карпа \u2014 руководство по четвёртому триместру',
        ky: 'Доктор Харви Карптын далилденген ыкмасы \u2014 төртүнчү триместр боюнча колдонмо',
      ),
      icon: Icons.auto_awesome,
      color: Color(0xFFE8787A),
      steps: [
        SoothingStep(
          title: L3(en: '1. Swaddle', ru: '1. Пеленание', ky: '1. Бышыктоо'),
          description: L3(
            en: 'Wrap baby snugly with arms down. This mimics the womb. Use a blanket or purpose-made swaddle. Arms snug, hips LOOSE (hip dysplasia risk if tight).',
            ru: 'Плотно заверните малыша с прижатыми руками. Это имитирует утробу. Используйте пелёнку или специальный кокон. Руки плотно, бёдра СВОБОДНО (риск дисплазии при тугом пеленании).',
            ky: 'Бөбөктү колдору басылган бышыктаңыз. Бул жатынды туурайт. Бышык же атайын кокон колдонуңуз. Колдор бек, жамбаштар БОШ (бек болсо дисплазия коркунучу).',
          ),
        ),
        SoothingStep(
          title: L3(en: '2. Side or Stomach position', ru: '2. На боку или на животе', ky: '2. Капталына же курсагына'),
          description: L3(
            en: "Hold baby on their side or stomach in your arms \u2014 NEVER to sleep. This position calms them because gravity isn't triggering their startle reflex.",
            ru: 'Держите малыша на боку или на животе на руках \u2014 НИКОГДА для сна. Это успокаивает, т.к. сила тяжести не провоцирует рефлекс вздрагивания.',
            ky: 'Бөбөктү колуңузда капталына же курсагына кармаңыз \u2014 ЭЧКАЧАН уктатпаңыз. Бул тынчтандырат, анткени гравитация чочуу рефлексин козгобойт.',
          ),
        ),
        SoothingStep(
          title: L3(en: '3. Shush', ru: '3. Шшш', ky: '3. Шшш'),
          description: L3(
            en: 'Make a loud "shhhhh" sound right in baby\'s ear, as loud as their crying. The womb is LOUD \u2014 about 85 decibels. Gentle shushing won\'t break through crying.',
            ru: 'Издайте громкий звук «шшш» прямо в ухо малышу, громко как его плач. В утробе ШУМНО \u2014 около 85 децибел. Тихое шиканье не перебьёт плач.',
            ky: 'Бөбөктүн кулагына катуу «шшш» деңиз, ыйлагандай катуу. Жатында ЫЗЫЛДАЙТ \u2014 85 децибел чамасында. Акырын шшш ыйлоону басат албайт.',
          ),
        ),
        SoothingStep(
          title: L3(en: '4. Swing', ru: '4. Покачивание', ky: '4. Термелтүү'),
          description: L3(
            en: 'Tiny, jiggly motions \u2014 small head movements, about 1 inch back and forth, 2-3 per second. NOT shaking. Think: jello jiggling.',
            ru: 'Мелкие покачивания \u2014 небольшие движения головы, 2-3 см туда-сюда, 2-3 раза в секунду. НЕ трясти. Представьте: дрожание желе.',
            ky: 'Майда термелтүү \u2014 башты 2-3 см ары-бери, секундасына 2-3 жолу. Силкпеңиз. Элестетиңиз: желенин титирөөсү.',
          ),
        ),
        SoothingStep(
          title: L3(en: '5. Suck', ru: '5. Сосание', ky: '5. Соруу'),
          description: L3(
            en: "Offer a pacifier, clean finger, or breast. Sucking releases calming chemicals in baby's brain.",
            ru: 'Дайте пустышку, чистый палец или грудь. Сосание выделяет успокаивающие вещества в мозге малыша.',
            ky: 'Соска, таза бармак же эмчек бериңиз. Соруу бөбөктүн мээсинде тынчтандыруучу заттарды чыгарат.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: "Crying that won't stop", ru: 'Плач, который не прекращается', ky: 'Токтобогон ыйлоо'),
        L3(en: 'Colicky baby (crying >3 hours/day)', ru: 'Колики (плач >3 часов/день)', ky: 'Колика (күнүнө >3 саат ыйлоо)'),
        L3(en: 'Before naps and bedtime', ru: 'Перед дневным и ночным сном', ky: 'Күндүзгү жана түнкү уйку алдында'),
        L3(en: '0-3 months (fourth trimester)', ru: '0-3 месяца (четвёртый триместр)', ky: '0-3 ай (төртүнчү триместр)'),
      ],
      safetyNotes: [
        L3(en: "Do all 5 S's TOGETHER, not one at a time", ru: 'Делайте все 5 «С» ВМЕСТЕ, не по одному', ky: 'Бардык 5 «С» ны БИРГЕ жасаңыз, бирден эмес'),
        L3(en: 'Always place baby on their BACK to sleep', ru: 'Всегда кладите малыша спать на СПИНУ', ky: 'Бөбөктү дайыма АРКАСЫНА жаткызыңыз'),
        L3(en: 'Side/stomach position is only while holding awake baby', ru: 'На боку/животе \u2014 только на руках у бодрствующего малыша', ky: 'Капталына/курсагына \u2014 ойгоо бөбөктү колдо гана'),
        L3(en: 'Most babies calm within 60 seconds when done correctly', ru: 'Большинство малышей успокаиваются за 60 секунд при правильной технике', ky: 'Көпчүлүк бөбөктөр туура жасаганда 60 секунданын ичинде тынчып калат'),
      ],
    ),

    // Hunger check
    SoothingTechnique(
      id: 'hunger',
      title: L3(en: 'Hunger Check', ru: 'Проверка голода', ky: 'Ачкалыкты текшерүү'),
      shortDescription: L3(
        en: 'Is baby hungry? Offer the breast or bottle first.',
        ru: 'Малыш голоден? Сначала предложите грудь или бутылочку.',
        ky: 'Бөбөк ачка? Алгач эмчек же бөтөлкө бериңиз.',
      ),
      icon: Icons.restaurant,
      color: Color(0xFFF5C15A),
      steps: [
        SoothingStep(
          title: L3(en: 'Look for hunger cues', ru: 'Ищите признаки голода', ky: 'Ачкалык белгилерин издеңиз'),
          description: L3(
            en: 'Rooting (turning head toward touch), hand-to-mouth, lip smacking, sucking on hands. Crying is a LATE hunger cue.',
            ru: 'Поисковый рефлекс (поворот головы к прикосновению), руки ко рту, чмокание, сосание рук. Плач \u2014 ПОЗДНИЙ признак голода.',
            ky: 'Издөө рефлекси (тийгенге башын буруу), колду оозуна, чаппылдатуу, колун соруу. Ыйлоо \u2014 КЕЧ ачкалык белгиси.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Offer feeding', ru: 'Предложите еду', ky: 'Тамак бериңиз'),
          description: L3(
            en: 'Breast: offer both sides. Bottle: start with half the usual amount. Newborns eat every 2-3 hours.',
            ru: 'Грудь: предлагайте обе. Бутылочка: начните с половины обычного объёма. Новорождённые едят каждые 2-3 часа.',
            ky: 'Эмчек: экөөнү тең сунуңуз. Бөтөлкө: кадимки көлөмдүн жарымынан баштаңыз. Жаңы төрөлгөн бөбөктөр 2-3 саат сайын жейт.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Burp halfway', ru: 'Помогите срыгнуть в середине', ky: 'Ортосунда кебиртиңиз'),
          description: L3(
            en: 'Burp when baby pauses or after the first breast. Gas can cause fussiness.',
            ru: 'Помогите малышу срыгнуть во время паузы или после первой груди. Газы вызывают беспокойство.',
            ky: 'Бөбөк тыныгып жатканда же биринчи эмчектен кийин кебиртиңиз. Газ тынчсыздануу жаратат.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Baby cried within last 2-3 hours of eating', ru: 'Малыш плачет через 2-3 часа после еды', ky: 'Бөбөк тамактангандан 2-3 саат кийин ыйлайт'),
        L3(en: 'Shows hunger cues', ru: 'Показывает признаки голода', ky: 'Ачкалык белгилерин көрсөтөт'),
        L3(en: 'Last feeding was small', ru: 'Последнее кормление было маленьким', ky: 'Акыркы тамактануу аз болгон'),
      ],
    ),

    // Diaper check
    SoothingTechnique(
      id: 'diaper',
      title: L3(en: 'Diaper Check', ru: 'Проверка подгузника', ky: 'Подгузникти текшерүү'),
      shortDescription: L3(
        en: 'Quick, obvious, but easy to forget.',
        ru: 'Быстро, очевидно, но легко забыть.',
        ky: 'Тез, айкын, бирок унутуу оңой.',
      ),
      icon: Icons.baby_changing_station,
      color: Color(0xFF5BBCB4),
      steps: [
        SoothingStep(
          title: L3(en: 'Check and change', ru: 'Проверьте и замените', ky: 'Текшерип, алмаштырыңыз'),
          description: L3(
            en: 'Newborns need 8-12 diaper changes a day. Wet or dirty diapers cause discomfort.',
            ru: 'Новорождённым нужно 8-12 смен подгузников в день. Мокрые или грязные подгузники вызывают дискомфорт.',
            ky: 'Жаңы төрөлгөн бөбөктөргө күнүнө 8-12 подгузник алмаштыруу керек. Нымдуу же кир подгузниктер ыңгайсыздык жаратат.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Check for rash', ru: 'Проверьте наличие сыпи', ky: 'Бөрттүктү текшериңиз'),
          description: L3(
            en: 'Red skin in the diaper area? Apply barrier cream. Let baby air out for a few minutes if possible.',
            ru: 'Покраснение в области подгузника? Нанесите защитный крем. По возможности дайте коже «подышать» несколько минут.',
            ky: 'Подгузник жеринде кызыл тери? Коргоочу крем сүртүңүз. Мүмкүн болсо бир нече мүнөт абада кургатыңыз.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Every 2-3 hours', ru: 'Каждые 2-3 часа', ky: 'Ар 2-3 саат сайын'),
        L3(en: 'Before feeds', ru: 'Перед кормлением', ky: 'Тамактануудан мурун'),
        L3(en: 'When baby fusses for no obvious reason', ru: 'Когда малыш капризничает без очевидной причины', ky: 'Бөбөк себепсиз капризничат кылганда'),
      ],
    ),

    // Too hot/cold
    SoothingTechnique(
      id: 'temperature',
      title: L3(en: 'Temperature Check', ru: 'Проверка температуры', ky: 'Температураны текшерүү'),
      shortDescription: L3(
        en: "Babies can't regulate their own temperature well.",
        ru: 'Малыши не могут хорошо регулировать температуру тела.',
        ky: 'Бөбөктөр дене температурасын жакшы жөнгө сала алышпайт.',
      ),
      icon: Icons.thermostat,
      color: Color(0xFF4FC3F7),
      steps: [
        SoothingStep(
          title: L3(en: "Check baby's neck/chest", ru: 'Проверьте шею/грудь малыша', ky: 'Бөбөктүн моюнун/көкүрөгүн текшериңиз'),
          description: L3(
            en: "Feel baby's neck or chest (NOT hands/feet). Hands and feet are naturally cooler. Neck should feel warm, not sweaty or cold.",
            ru: 'Потрогайте шею или грудь малыша (НЕ руки/ноги). Ручки и ножки от природы прохладнее. Шея должна быть тёплой, не потной и не холодной.',
            ky: 'Бөбөктүн моюнун же көкүрөгүн кармаңыз (колдорун/буттарын ЭМЕС). Колдору жана буттары табигый суугураак. Моюн жылуу болушу керек, терибеген жана суук эмес.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Room temperature', ru: 'Температура в комнате', ky: 'Бөлмөнүн температурасы'),
          description: L3(
            en: 'Ideal: 20-22\u00b0C (68-72\u00b0F). Baby should wear one more layer than you feel comfortable in.',
            ru: 'Идеально: 20-22\u00b0C. Малыш должен быть одет на один слой больше, чем комфортно вам.',
            ky: 'Идеалдуу: 20-22\u00b0C. Бөбөк сизге ыңгайлуудан бир катмар көбүрөөк кийиши керек.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Adjust clothing', ru: 'Поменяйте одежду', ky: 'Кийимин өзгөртүңүз'),
          description: L3(
            en: 'Too hot = remove a layer. Too cold = add a layer. Never overdress for sleep (SIDS risk).',
            ru: 'Жарко = снимите слой. Холодно = добавьте. Не перекутывайте на сон (риск СВДС).',
            ky: 'Ысык = бир катмар чечиңиз. Суук = кошуңуз. Уйкуда ашыкча кийгизбеңиз (СВДС коркунучу).',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Baby seems fussy without obvious cause', ru: 'Малыш капризничает без видимой причины', ky: 'Бөбөк себепсиз капризничат'),
        L3(en: 'Sweating or red-faced', ru: 'Потеет или покраснел', ky: 'Тердеп же кызарып'),
        L3(en: 'Cold to the touch on neck', ru: 'Шея холодная на ощупь', ky: 'Моюну кармаганда суук'),
      ],
    ),

    // Burping
    SoothingTechnique(
      id: 'burping',
      title: L3(en: 'Burping Positions', ru: 'Позы для срыгивания', ky: 'Кебирүү позалары'),
      shortDescription: L3(
        en: 'Trapped gas is a top cause of baby fussiness.',
        ru: 'Скопление газов \u2014 главная причина беспокойства малышей.',
        ky: 'Газдын чогулуусу \u2014 бөбөктүн тынчсыздануусунун негизги себеби.',
      ),
      icon: Icons.air,
      color: Color(0xFFFF7043),
      steps: [
        SoothingStep(
          title: L3(en: 'Over-the-shoulder', ru: 'На плече', ky: 'Ийинде'),
          description: L3(
            en: 'Hold baby upright, their chin on your shoulder. Support their bottom. Pat firmly between shoulder blades.',
            ru: 'Держите малыша вертикально, подбородок на вашем плече. Поддерживайте попу. Похлопывайте между лопатками.',
            ky: 'Бөбөктү тик кармаңыз, ээги ийиниңизде. Отурган жерин колдоңуз. Далынын ортосуна таптаңыз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Sitting on lap', ru: 'Сидя на коленях', ky: 'Тизеде отуруу'),
          description: L3(
            en: 'Sit baby upright on your lap. Support their chest and chin with one hand. Pat or rub their back with the other.',
            ru: 'Посадите малыша вертикально на колени. Одной рукой поддерживайте грудь и подбородок. Другой \u2014 похлопывайте по спинке.',
            ky: 'Бөбөктү тизеңизге тик отургузуңуз. Бир колуңуз менен көкүрөгүн жана ээгин кармаңыз. Экинчиси менен арка жагын таптаңыз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Face-down on lap', ru: 'Лицом вниз на коленях', ky: 'Тизеде бетин ылдый'),
          description: L3(
            en: 'Lay baby face-down across your knees. Support their head (turned to side). Pat gently. Works great for stubborn gas.',
            ru: 'Положите малыша животом на ваши колени. Поддерживайте голову (повёрнутую набок). Похлопывайте. Отлично помогает при упрямых газах.',
            ky: 'Бөбөктү курсагы менен тизеңизге жаткырыңыз. Башын кармаңыз (капталына буруп). Жумшак таптаңыз. Катуу газдарга сонун жардам берет.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'After every feeding', ru: 'После каждого кормления', ky: 'Ар бир тамактануудан кийин'),
        L3(en: 'If baby cries shortly after eating', ru: 'Если малыш плачет вскоре после еды', ky: 'Бөбөк тамактангандан кийин эле ыйласа'),
        L3(en: 'If baby pulls legs up to belly (gas pain sign)', ru: 'Если малыш подтягивает ножки к животу (признак газов)', ky: 'Бөбөк буттарын курсагына тартса (газ оору белгиси)'),
      ],
    ),

    // Overstimulation
    SoothingTechnique(
      id: 'overstimulation',
      title: L3(en: 'Reduce Stimulation', ru: 'Уменьшите раздражители', ky: 'Таасирлерди азайтыңыз'),
      shortDescription: L3(
        en: 'Too much world can overwhelm a newborn brain.',
        ru: 'Слишком много впечатлений перегружают мозг новорождённого.',
        ky: 'Өтө көп таасир жаңы төрөлгөн бөбөктүн мээсин чарчатат.',
      ),
      icon: Icons.visibility_off,
      color: Color(0xFF9575CD),
      steps: [
        SoothingStep(
          title: L3(en: 'Go to a quiet room', ru: 'Уйдите в тихую комнату', ky: 'Тынч бөлмөгө өтүңүз'),
          description: L3(
            en: 'Dim the lights, close curtains, turn off TV/phones. Low sensory input.',
            ru: 'Приглушите свет, задёрните шторы, выключите ТВ и телефоны. Минимум раздражителей.',
            ky: 'Жарыкты азайтыңыз, пардаларды жабыңыз, ТВ/телефондорду өчүрүңүз. Аз таасир.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Reduce handling', ru: 'Уменьшите передачу из рук в руки', ky: 'Колдон колго берүүнү азайтыңыз'),
          description: L3(
            en: 'Stop passing baby around. One person holds baby quietly, close to their chest.',
            ru: 'Перестаньте передавать малыша. Один человек тихо держит его у груди.',
            ky: 'Бөбөктү колдон колго берүүнү токтотуңуз. Бир адам аны тынч көкүрөгүндө кармасын.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'White noise', ru: 'Белый шум', ky: 'Ак ызы-чуу'),
          description: L3(
            en: 'Turn on steady white noise. Mimics the womb. Use the Sounds tab in this app.',
            ru: 'Включите равномерный белый шум. Имитирует утробу. Используйте вкладку «Звуки» в приложении.',
            ky: 'Бир калыпта ак ызы-чууну күйгүзүңүз. Жатынды туурайт. Колдонмодогу «Үндөр» бөлүмүн колдонуңуз.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'End of the day (witching hour)', ru: 'Конец дня (беспокойный час)', ky: 'Күндүн аягы (тынчсыз саат)'),
        L3(en: 'After visitors left', ru: 'После ухода гостей', ky: 'Конокторт кеткенден кийин'),
        L3(en: 'Baby is arching back, turning away, closing eyes', ru: 'Малыш выгибает спину, отворачивается, закрывает глаза', ky: 'Бөбөк аркасын ийип, бурулуп, көзүн жумуп жатат'),
        L3(en: 'After stimulating activities', ru: 'После активных занятий', ky: 'Активдүү иш-чаралардан кийин'),
      ],
    ),

    // Bicycle legs
    SoothingTechnique(
      id: 'bicycle',
      title: L3(en: 'Bicycle Legs', ru: 'Велосипед ножками', ky: 'Буттары менен велосипед'),
      shortDescription: L3(
        en: 'Gentle massage for gas and constipation relief.',
        ru: 'Нежный массаж от газов и запора.',
        ky: 'Газдарга жана ич катуулугуна жумшак массаж.',
      ),
      icon: Icons.directions_bike,
      color: Color(0xFF66BB6A),
      steps: [
        SoothingStep(
          title: L3(en: 'Lay baby on back', ru: 'Положите малыша на спину', ky: 'Бөбөктү аркасына жаткырыңыз'),
          description: L3(
            en: 'On a firm, flat surface. Make eye contact and smile.',
            ru: 'На твёрдую ровную поверхность. Смотрите в глаза и улыбайтесь.',
            ky: 'Катуу, тегиз бетке. Көзүнө карап жылмайыңыз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Gentle cycling motion', ru: 'Плавные круговые движения', ky: 'Жумшак айлантуу кыймылы'),
          description: L3(
            en: 'Hold their ankles. Gently bend and straighten their legs in a cycling motion, one at a time. 10-20 cycles.',
            ru: 'Держите за щиколотки. Мягко сгибайте и разгибайте ножки поочерёдно, как на велосипеде. 10-20 циклов.',
            ky: 'Тобуктарынан кармаңыз. Буттарын кезек менен велосипеддей жумшак бүгүп жазыңыз. 10-20 айлануу.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Knees to chest', ru: 'Колени к груди', ky: 'Тизелерди көкүрөккө'),
          description: L3(
            en: 'Bring both knees up to their chest and hold for 10 seconds. Release. Repeat 3-5 times.',
            ru: 'Подтяните обе коленки к груди и удерживайте 10 секунд. Отпустите. Повторите 3-5 раз.',
            ky: 'Эки тизесин көкүрөгүнө тартып 10 секунд кармаңыз. Коё бериңиз. 3-5 жолу кайталаңыз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Tummy massage', ru: 'Массаж животика', ky: 'Курсак массажы'),
          description: L3(
            en: "Gently massage baby's belly in clockwise circles. This follows the natural direction of the intestines.",
            ru: 'Мягко массируйте животик по часовой стрелке. Это совпадает с естественным направлением работы кишечника.',
            ky: 'Бөбөктүн курсагын саат жебеси боюнча жумшак массаж кылыңыз. Бул ичегилердин табигый багытына дал келет.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Baby is gassy or constipated', ru: 'У малыша газы или запор', ky: 'Бөбөктө газ же ич катуулук'),
        L3(en: 'Pulling legs up', ru: 'Подтягивает ножки', ky: 'Буттарын тартат'),
        L3(en: 'Straining without passing gas/stool', ru: 'Тужится без результата', ky: 'Натыжылат бирок газ/заара чыкпайт'),
        L3(en: 'Between feedings (not right after)', ru: 'Между кормлениями (не сразу после)', ky: 'Тамактануулардын ортосунда (кийин эле эмес)'),
      ],
    ),

    // Movement
    SoothingTechnique(
      id: 'movement',
      title: L3(en: 'Movement & Motion', ru: 'Движение и укачивание', ky: 'Кыймыл жана термелтүү'),
      shortDescription: L3(
        en: 'Babies spent 9 months being rocked. They need it.',
        ru: 'Малыш 9 месяцев качался в утробе. Ему это нужно.',
        ky: 'Бөбөк 9 ай жатында термелди. Ага бул керек.',
      ),
      icon: Icons.directions_walk,
      color: Color(0xFF26A69A),
      steps: [
        SoothingStep(
          title: L3(en: 'Walking', ru: 'Прогулка', ky: 'Басуу'),
          description: L3(
            en: 'Carry baby while walking. Pace around the room, up and down stairs, around the block.',
            ru: 'Носите малыша на руках. Ходите по комнате, по лестнице, вокруг дома.',
            ky: 'Бөбөктү көтөрүп басыңыз. Бөлмөдө, тепкич менен, үйдүн тегерегинде.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Rocking chair', ru: 'Кресло-качалка', ky: 'Кресло-термелтүүч'),
          description: L3(
            en: 'Steady back-and-forth rocking. Rhythmic and predictable.',
            ru: 'Равномерное покачивание вперёд-назад. Ритмичное и предсказуемое.',
            ky: 'Бир калыпта алды-артка термелүү. Ыргактуу жана болжолдуу.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Baby carrier', ru: 'Слинг/эргорюкзак', ky: 'Бөбөк ташуучу'),
          description: L3(
            en: 'Wearing baby close keeps them calm and frees your hands. Wrap, sling, or structured carrier.',
            ru: 'Ношение малыша близко успокаивает и освобождает руки. Слинг, обёртка или эргорюкзак.',
            ky: 'Бөбөктү жакын кармоо тынчтандырат жана колдоруңузду бошотот. Слинг же эргорюкзак.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Car ride', ru: 'Поездка на машине', ky: 'Машинада жүрүү'),
          description: L3(
            en: 'Last resort but effective. The rhythm of driving calms most babies within minutes.',
            ru: 'Крайний вариант, но действенный. Ритм езды успокаивает большинство малышей за минуты.',
            ky: 'Акыркы чара, бирок натыйжалуу. Айдоонун ыргагы бөбөктөрдүн көпчүлүгүн мүнөттөр ичинде тынчтандырат.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Baby is fussy but not hungry/tired', ru: 'Малыш капризничает, но не голодный/уставший', ky: 'Бөбөк капризничат, бирок ач/чарчаган эмес'),
        L3(en: 'Evening fussiness', ru: 'Вечернее беспокойство', ky: 'Кечки тынчсыздануу'),
        L3(en: 'Need to free your hands', ru: 'Нужно освободить руки', ky: 'Колдоруңузду бошотуу керек'),
        L3(en: 'Before sleep', ru: 'Перед сном', ky: 'Уйку алдында'),
      ],
    ),

    // Singing
    SoothingTechnique(
      id: 'singing',
      title: L3(en: 'Singing & Talking', ru: 'Пение и разговор', ky: 'Ырдоо жана сүйлөшүү'),
      shortDescription: L3(
        en: "Your voice is your baby's favorite sound.",
        ru: 'Ваш голос \u2014 любимый звук малыша.',
        ky: 'Сиздин үнүңүз \u2014 бөбөктүн сүйүктүү үнү.',
      ),
      icon: Icons.music_note,
      color: Color(0xFFEC407A),
      steps: [
        SoothingStep(
          title: L3(en: 'Sing anything', ru: 'Пойте что угодно', ky: 'Каалаган нерсени ырдаңыз'),
          description: L3(
            en: "Baby doesn't care if you're in tune. They recognized your voice from the womb \u2014 it's comforting.",
            ru: 'Малышу не важна мелодия. Он узнал ваш голос ещё в утробе \u2014 это успокаивает.',
            ky: 'Бөбөккө обон маанилүү эмес. Ал үнүңүздү жатындан тааныйт \u2014 бул тынчтандырат.',
          ),
        ),
        SoothingStep(
          title: L3(en: "Narrate what you're doing", ru: 'Комментируйте свои действия', ky: 'Эмне кылып жатканыңызды айтып бериңиз'),
          description: L3(
            en: '"We\'re going to change your diaper now, sweet girl." This builds language and connection.',
            ru: '«Сейчас мы будем менять подгузник, малышка». Это развивает речь и укрепляет связь.',
            ky: '«Азыр подгузнигиңди алмаштырабыз, кичинекей». Бул тилди өнүктүрөт жана байланышты бекемдейт.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Low hum', ru: 'Тихое мурлыканье', ky: 'Акырын ыңылдоо'),
          description: L3(
            en: "A low, steady hum right next to baby's ear. Creates vibration similar to being in the womb.",
            ru: 'Низкое, ровное мурлыканье прямо у уха малыша. Создаёт вибрацию, как в утробе.',
            ky: 'Бөбөктүн кулагына жакын акырын, бир калыпта ыңылдоо. Жатындагыдай дирилдөө жаратат.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Bonding time', ru: 'Время для сближения', ky: 'Жакындашуу убактысы'),
        L3(en: 'During feeds and diaper changes', ru: 'Во время кормления и смены подгузника', ky: 'Тамактануу жана подгузник алмаштыруу учурунда'),
        L3(en: 'To distract before a meltdown', ru: 'Чтобы отвлечь перед истерикой', ky: 'Истериканын алдында алаксытуу'),
        L3(en: 'Bath time', ru: 'Во время купания', ky: 'Сууга түшүү учурунда'),
      ],
    ),

    // Warm bath
    SoothingTechnique(
      id: 'bath',
      title: L3(en: 'Warm Bath', ru: 'Тёплая ванна', ky: 'Жылуу ванна'),
      shortDescription: L3(
        en: 'The ultimate reset button.',
        ru: 'Лучшая кнопка перезагрузки.',
        ky: 'Эң мыкты кайра баштоо баскычы.',
      ),
      icon: Icons.bathtub,
      color: Color(0xFF4DB6AC),
      steps: [
        SoothingStep(
          title: L3(en: 'Fill to 2 inches', ru: 'Наполните на 5 см', ky: '5 см толтуруңуз'),
          description: L3(
            en: 'Water temperature: 37\u00b0C / 98\u00b0F. Test with your wrist or a thermometer.',
            ru: 'Температура воды: 37\u00b0C. Проверьте запястьем или термометром.',
            ky: 'Суунун температурасы: 37\u00b0C. Билегиңиз же термометр менен текшериңиз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Support head & neck', ru: 'Поддерживайте голову и шею', ky: 'Башын жана моюнун кармаңыз'),
          description: L3(
            en: "Keep baby's head and neck above water at all times. Use one hand to support under their arm and shoulder.",
            ru: 'Голова и шея малыша всегда должны быть над водой. Одной рукой поддерживайте под мышкой и плечом.',
            ky: 'Бөбөктүн башы жана моюну дайыма суунун үстүндө болсун. Бир колуңуз менен колтугунан жана ийининен кармаңыз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Cup water over belly', ru: 'Поливайте животик', ky: 'Курсагына суу куюңуз'),
          description: L3(
            en: 'Keep them warm by continuously pouring water over their body with your free hand.',
            ru: 'Поддерживайте тепло, постоянно поливая тело малыша водой свободной рукой.',
            ky: 'Бош колуңуз менен денесине үзгүлтүксүз суу куюп жылуу кармаңыз.',
          ),
        ),
        SoothingStep(
          title: L3(en: 'Wrap immediately after', ru: 'Заверните сразу после', ky: 'Чыккан замат ороңуз'),
          description: L3(
            en: 'Babies get cold fast. Wrap in a warm towel as soon as you lift them out.',
            ru: 'Малыши быстро мёрзнут. Заверните в тёплое полотенце сразу, как достали из воды.',
            ky: 'Бөбөктөр тез тоңушат. Суудан чыгарганда дароо жылуу сүлгүгө ороңуз.',
          ),
        ),
      ],
      whenToUse: [
        L3(en: 'Evening fussiness', ru: 'Вечернее беспокойство', ky: 'Кечки тынчсыздануу'),
        L3(en: 'Before bedtime routine', ru: 'Перед вечерним ритуалом', ky: 'Уйку ритуалынын алдында'),
        L3(en: 'When nothing else works', ru: 'Когда ничего другое не помогает', ky: 'Башка эч нерсе жардам бербегенде'),
      ],
      safetyNotes: [
        L3(en: 'NEVER leave baby alone in water \u2014 not even for a second', ru: 'НИКОГДА не оставляйте малыша одного в воде \u2014 ни на секунду', ky: 'Бөбөктү ЭЧКАЧАН сууда жалгыз калтырбаңыз \u2014 бир секунд да'),
        L3(en: 'Water should be no deeper than 2 inches', ru: 'Уровень воды не более 5 см', ky: 'Суунун деңгээли 5 см ден ашпашы керек'),
        L3(en: 'Until cord stump falls off (~2 weeks), sponge bath only', ru: 'Пока не отпадёт пуповина (~2 недели), только обтирание губкой', ky: 'Киндик түшмөйүнчө (~2 жума), губка менен гана сүртүңүз'),
      ],
    ),
  ];

  static SoothingTechnique? byId(String id) {
    try {
      return techniques.firstWhere((t) => t.id == id);
    } catch (_) {
      return null;
    }
  }
}
