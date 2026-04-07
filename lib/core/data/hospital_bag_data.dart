// Hospital bag checklist seed data.
// Curated from common labor & delivery recommendations.
import '../l10n/content_localizations.dart';

enum BagCategory {
  mom(L3(en: 'For Mom', ru: 'Для мамы', ky: 'Эне үчүн')),
  baby(L3(en: 'For Baby', ru: 'Для малыша', ky: 'Бөбөк үчүн')),
  partner(L3(en: 'For Partner', ru: 'Для партнёра', ky: 'Жубай үчүн')),
  documents(L3(en: 'Documents', ru: 'Документы', ky: 'Документтер'));

  const BagCategory(this.label);
  final L3 label;
}

class HospitalBagItem {
  final String id;
  final BagCategory category;
  final L3 name;
  final L3? note;
  final bool essential;

  const HospitalBagItem({
    required this.id,
    required this.category,
    required this.name,
    this.note,
    this.essential = false,
  });
}

class HospitalBagData {
  HospitalBagData._();

  static const items = <HospitalBagItem>[
    // DOCUMENTS
    HospitalBagItem(
      id: 'doc-id',
      category: BagCategory.documents,
      name: L3(en: 'ID / passport', ru: 'Паспорт / удостоверение', ky: 'Паспорт / ID'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'doc-insurance',
      category: BagCategory.documents,
      name: L3(en: 'Insurance card', ru: 'Страховой полис', ky: 'Камсыздандыруу полиси'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'doc-hospital-paperwork',
      category: BagCategory.documents,
      name: L3(en: 'Hospital pre-registration papers', ru: 'Документы для роддома', ky: 'Төрөт үйүнө документтер'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'doc-birth-plan',
      category: BagCategory.documents,
      name: L3(en: 'Birth plan (printed copies)', ru: 'План родов (печатные копии)', ky: 'Төрөт планы (басылган нускалар)'),
      note: L3(en: '3 copies: nurse, doctor, chart', ru: '3 копии: медсестре, врачу, в карту', ky: '3 нуска: медайымга, дарыгерге, картага'),
    ),
    HospitalBagItem(
      id: 'doc-prenatal-records',
      category: BagCategory.documents,
      name: L3(en: 'Prenatal medical records', ru: 'Медицинская карта беременной', ky: 'Кош бойлуулук медициналык картасы'),
    ),

    // FOR MOM
    HospitalBagItem(
      id: 'mom-robe',
      category: BagCategory.mom,
      name: L3(en: 'Comfortable robe', ru: 'Удобный халат', ky: 'Ыңгайлуу халат'),
      note: L3(en: 'Dark colors hide stains', ru: 'Тёмные цвета скрывают пятна', ky: 'Караңгы түстөр тактарды жашырат'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-slippers',
      category: BagCategory.mom,
      name: L3(en: 'Non-slip slippers or socks', ru: 'Нескользящие тапочки или носки', ky: 'Тайгылбас тапочкалар же байпактар'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-nursing-bras',
      category: BagCategory.mom,
      name: L3(en: 'Nursing bras (2-3)', ru: 'Бюстгальтеры для кормления (2-3)', ky: 'Эмизүү бюстгальтерлери (2-3)'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-nursing-pads',
      category: BagCategory.mom,
      name: L3(en: 'Nursing pads', ru: 'Вкладыши для бюстгальтера', ky: 'Эмизүү төшөмчөлөрү'),
    ),
    HospitalBagItem(
      id: 'mom-underwear',
      category: BagCategory.mom,
      name: L3(en: 'Disposable or old underwear (5+)', ru: 'Одноразовое или старое бельё (5+)', ky: 'Бир жолку же эски ички кийим (5+)'),
      note: L3(en: "You will bleed. Don't bring your nice ones.", ru: 'Будет кровотечение. Не берите хорошие.', ky: 'Кан агат. Жакшыларыңды алба.'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-pads',
      category: BagCategory.mom,
      name: L3(en: 'Heavy-flow maxi pads', ru: 'Прокладки макси для обильных выделений', ky: 'Мол агымдуу макси тампондор'),
      note: L3(en: 'Hospital provides some, but bring extras', ru: 'Роддом даёт, но возьмите запас', ky: 'Төрөт үйү берет, бирок кошумча алыңыз'),
    ),
    HospitalBagItem(
      id: 'mom-toiletries',
      category: BagCategory.mom,
      name: L3(en: 'Toiletries (shampoo, toothbrush, lip balm)', ru: 'Средства гигиены (шампунь, зубная щётка, бальзам для губ)', ky: 'Гигиена каражаттары (шампунь, тиш щёткасы, эрин бальзамы)'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-hair-ties',
      category: BagCategory.mom,
      name: L3(en: 'Hair ties and clips', ru: 'Резинки и заколки для волос', ky: 'Чач резинкалары жана чач кыскычтары'),
    ),
    HospitalBagItem(
      id: 'mom-phone-charger',
      category: BagCategory.mom,
      name: L3(en: 'Phone charger (extra long cord)', ru: 'Зарядка для телефона (длинный шнур)', ky: 'Телефон зарядкасы (узун шнур)'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-snacks',
      category: BagCategory.mom,
      name: L3(en: 'Snacks for labor and after', ru: 'Перекусы для родов и после', ky: 'Төрөт учурунда жана кийин тамактануу'),
      note: L3(en: 'Granola bars, dried fruit, crackers', ru: 'Батончики, сухофрукты, крекеры', ky: 'Батончиктер, кургатылган жемиштер, крекерлер'),
    ),
    HospitalBagItem(
      id: 'mom-water-bottle',
      category: BagCategory.mom,
      name: L3(en: 'Water bottle with straw', ru: 'Бутылка воды с трубочкой', ky: 'Түтүкчөлүү суу бөтөлкөсү'),
    ),
    HospitalBagItem(
      id: 'mom-going-home-outfit',
      category: BagCategory.mom,
      name: L3(en: 'Loose going-home outfit', ru: 'Свободная одежда для выписки', ky: 'Үйгө кетүү үчүн бош кийим'),
      note: L3(en: "You'll still look pregnant for weeks", ru: 'Вы ещё несколько недель будете выглядеть беременной', ky: 'Дагы бир нече жума кош бойлуу көрүнөсүз'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'mom-pillow',
      category: BagCategory.mom,
      name: L3(en: 'Your own pillow', ru: 'Своя подушка', ky: 'Өзүңдүн жаздыгың'),
      note: L3(en: 'Hospital pillows are flat', ru: 'Больничные подушки плоские', ky: 'Ооруканадагы жаздыктар жалпак'),
    ),
    HospitalBagItem(
      id: 'mom-eye-mask',
      category: BagCategory.mom,
      name: L3(en: 'Eye mask and earplugs', ru: 'Маска для сна и беруши', ky: 'Уйку маскасы жана кулак тыгыны'),
      note: L3(en: 'Hospital rooms are bright and noisy', ru: 'В палатах светло и шумно', ky: 'Палаталарда жарык жана ызы-чуу'),
    ),

    // FOR BABY
    HospitalBagItem(
      id: 'baby-going-home',
      category: BagCategory.baby,
      name: L3(en: 'Going-home outfit (2 sizes: newborn + 0-3mo)', ru: 'Одежда на выписку (2 размера: новорождённый + 0-3 мес.)', ky: 'Үйгө кетүү кийими (2 размер: жаңы төрөлгөн + 0-3 ай)'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'baby-onesies',
      category: BagCategory.baby,
      name: L3(en: 'Onesies or sleepers (2-3)', ru: 'Боди или слипы (2-3)', ky: 'Боди же слиптер (2-3)'),
    ),
    HospitalBagItem(
      id: 'baby-socks-hat',
      category: BagCategory.baby,
      name: L3(en: 'Socks, mittens, hat', ru: 'Носочки, царапки, шапочка', ky: 'Байпактар, кол кааптар, баш кийим'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'baby-swaddle',
      category: BagCategory.baby,
      name: L3(en: 'Swaddle blankets (2)', ru: 'Пелёнки (2)', ky: 'Бышыктар (2)'),
    ),
    HospitalBagItem(
      id: 'baby-car-seat',
      category: BagCategory.baby,
      name: L3(en: 'Car seat (installed!)', ru: 'Автокресло (установлено!)', ky: 'Автокресло (орнотулган!)'),
      note: L3(en: 'Hospital will not let you leave without one', ru: 'Без автокресла не выпишут', ky: 'Автокреслосуз чыгарбайт'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'baby-weather-gear',
      category: BagCategory.baby,
      name: L3(en: 'Weather-appropriate outerwear', ru: 'Одежда по погоде', ky: 'Аба ырайына ылайык кийим'),
      note: L3(en: 'Thin blanket for car seat (NOT under straps)', ru: 'Тонкое одеяло для автокресла (НЕ под ремни)', ky: 'Автокреслого жука жууркан (ремендин астына ЭМЕС)'),
    ),

    // FOR PARTNER
    HospitalBagItem(
      id: 'partner-clothes',
      category: BagCategory.partner,
      name: L3(en: 'Change of clothes (2 days)', ru: 'Сменная одежда (на 2 дня)', ky: 'Алмаштыруу кийими (2 күнгө)'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'partner-toiletries',
      category: BagCategory.partner,
      name: L3(en: 'Toiletries', ru: 'Средства гигиены', ky: 'Гигиена каражаттары'),
    ),
    HospitalBagItem(
      id: 'partner-snacks',
      category: BagCategory.partner,
      name: L3(en: 'Snacks and drinks', ru: 'Перекусы и напитки', ky: 'Тамак-аш жана суусундуктар'),
      note: L3(en: 'Labor takes hours. Hospital food is expensive.', ru: 'Роды длятся часами. Больничная еда дорогая.', ky: 'Төрөт сааттап созулат. Ооруканадагы тамак кымбат.'),
    ),
    HospitalBagItem(
      id: 'partner-charger',
      category: BagCategory.partner,
      name: L3(en: 'Phone charger', ru: 'Зарядка для телефона', ky: 'Телефон зарядкасы'),
      essential: true,
    ),
    HospitalBagItem(
      id: 'partner-camera',
      category: BagCategory.partner,
      name: L3(en: 'Camera (or good phone camera)', ru: 'Фотоаппарат (или хорошая камера телефона)', ky: 'Камера (же жакшы телефон камерасы)'),
    ),
    HospitalBagItem(
      id: 'partner-pillow-blanket',
      category: BagCategory.partner,
      name: L3(en: 'Pillow and light blanket', ru: 'Подушка и лёгкое одеяло', ky: 'Жаздык жана жеңил жууркан'),
      note: L3(en: 'Hospital chairs are terrible', ru: 'Больничные стулья ужасные', ky: 'Ооруканадагы отургучтар начар'),
    ),
  ];

  static List<HospitalBagItem> byCategory(BagCategory category) {
    return items.where((i) => i.category == category).toList();
  }

  static List<HospitalBagItem> essentials() {
    return items.where((i) => i.essential).toList();
  }
}
