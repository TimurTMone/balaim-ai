import 'package:flutter/material.dart';
import '../../shared/models/marketplace_models.dart';
import '../constants/app_constants.dart';
import '../l10n/content_localizations.dart';
import '../theme/app_colors.dart';

/// Seed data for the marketplace — loaded from here in demo mode,
/// replaced by Firestore in production.
class SeedData {
  SeedData._();

  // ==========================================================
  // CATEGORIES
  // ==========================================================
  static const categories = <ProductCategory>[
    ProductCategory(id: 'diapers', name: L3(en: 'Diapers', ru: 'Подгузники', ky: 'Бала таңгычтар'), icon: Icons.baby_changing_station, color: AppColors.primary, productCount: 18),
    ProductCategory(id: 'feeding', name: L3(en: 'Feeding', ru: 'Кормление', ky: 'Тамактандыруу'), icon: Icons.restaurant, color: AppColors.secondary, productCount: 24),
    ProductCategory(id: 'clothing', name: L3(en: 'Clothing', ru: 'Одежда', ky: 'Кийим'), icon: Icons.checkroom, color: AppColors.accent, productCount: 32),
    ProductCategory(id: 'health', name: L3(en: 'Health', ru: 'Здоровье', ky: 'Ден соолук'), icon: Icons.health_and_safety, color: AppColors.success, productCount: 20),
    ProductCategory(id: 'gear', name: L3(en: 'Gear', ru: 'Аксессуары', ky: 'Аксессуарлар'), icon: Icons.stroller, color: AppColors.stagePrePregnancy, productCount: 15),
    ProductCategory(id: 'toys', name: L3(en: 'Toys', ru: 'Игрушки', ky: 'Оюнчуктар'), icon: Icons.smart_toy, color: AppColors.stageToddler, productCount: 28),
    ProductCategory(id: 'maternity', name: L3(en: 'Maternity', ru: 'Для беременных', ky: 'Кош бойлуулар үчүн'), icon: Icons.pregnant_woman, color: AppColors.stagePregnancy, productCount: 16),
    ProductCategory(id: 'photography', name: L3(en: 'Photos', ru: 'Фото', ky: 'Сүрөттөр'), icon: Icons.camera_alt, color: Color(0xFF7C4DFF), productCount: 8),
    ProductCategory(id: 'services', name: L3(en: 'Services', ru: 'Услуги', ky: 'Кызматтар'), icon: Icons.medical_services, color: AppColors.secondaryDark, productCount: 12),
    ProductCategory(id: 'food', name: L3(en: 'Meals', ru: 'Еда', ky: 'Тамак'), icon: Icons.lunch_dining, color: Color(0xFFFF7043), productCount: 6),
  ];

  // ==========================================================
  // VENDORS
  // ==========================================================
  static const vendors = <Vendor>[
    Vendor(
      id: 'mama-znaet',
      name: L3(en: 'Mama Znaet', ru: 'Мама Знает', ky: 'Мама Знает'),
      description: L3(
        en: 'The first diaper brand created by moms for moms. Japanese technology, free delivery.',
        ru: 'Первый бренд подгузников, созданный мамами для мам. Японская технология, бесплатная доставка.',
        ky: 'Энелер энелер үчүн жараткан биринчи бала таңгыч бренди. Жапон технологиясы, акысыз жеткирүү.',
      ),
      icon: Icons.baby_changing_station,
      iconColor: AppColors.primary,
      website: 'https://mamaznaet.kg',
      rating: 4.8,
      reviewCount: 342,
      isVerified: true,
      isFeatured: true,
      category: 'Diapers',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'tiny-steps',
      name: L3(en: 'TinySteps Photography', ru: 'TinySteps Фотография', ky: 'TinySteps Фотография'),
      description: L3(
        en: 'Professional maternity, newborn, and family photography.',
        ru: 'Профессиональная съёмка беременных, новорождённых и семейная фотография.',
        ky: 'Кесиптик кош бойлуу, жаңы төрөлгөн жана үй-бүлөлүк сүрөт.',
      ),
      icon: Icons.camera_alt,
      iconColor: Color(0xFF7C4DFF),
      rating: 4.9,
      reviewCount: 127,
      isVerified: true,
      isFeatured: true,
      category: 'Photography',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'bamboo-nest',
      name: L3(en: 'BambooNest', ru: 'BambooNest', ky: 'BambooNest'),
      description: L3(
        en: 'Eco-friendly baby products — organic clothing, bamboo, natural skincare.',
        ru: 'Эко-товары для малышей — органическая одежда, бамбук, натуральный уход.',
        ky: 'Экологиялык бала товарлары — органикалык кийим, бамбук, табигый тери кароо.',
      ),
      icon: Icons.eco,
      iconColor: AppColors.success,
      rating: 4.7,
      reviewCount: 89,
      isVerified: true,
      isFeatured: false,
      category: 'Clothing',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'mama-fuel',
      name: L3(en: 'MamaFuel Meals', ru: 'MamaFuel Еда', ky: 'MamaFuel Тамак'),
      description: L3(
        en: 'Nutritious meal delivery for pregnant and postpartum moms.',
        ru: 'Доставка питательных блюд для беременных и родивших мам.',
        ky: 'Кош бойлуу жана төрөгөн энелер үчүн тамактуу тамак жеткирүү.',
      ),
      icon: Icons.lunch_dining,
      iconColor: Color(0xFFFF7043),
      rating: 4.6,
      reviewCount: 64,
      isVerified: true,
      isFeatured: false,
      category: 'Meal Prep',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'little-joy',
      name: L3(en: 'Little Joy Toys', ru: 'Little Joy Игрушки', ky: 'Little Joy Оюнчуктар'),
      description: L3(
        en: 'Educational and developmental toys. Montessori-inspired.',
        ru: 'Обучающие и развивающие игрушки. В стиле Монтессори.',
        ky: 'Билим берүүчү жана өнүктүрүүчү оюнчуктар. Монтессори стилинде.',
      ),
      icon: Icons.smart_toy,
      iconColor: AppColors.stageToddler,
      rating: 4.8,
      reviewCount: 156,
      isVerified: true,
      isFeatured: false,
      category: 'Toys & Books',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'comfy-mom',
      name: L3(en: 'ComfyMom', ru: 'ComfyMom', ky: 'ComfyMom'),
      description: L3(
        en: 'Maternity and nursing wear. From bump to breastfeeding.',
        ru: 'Одежда для беременных и кормящих. От животика до кормления.',
        ky: 'Кош бойлуу жана эмизүүчү кийимдер. Курсактан эмизүүгө чейин.',
      ),
      icon: Icons.checkroom,
      iconColor: AppColors.stagePregnancy,
      rating: 4.5,
      reviewCount: 98,
      isVerified: true,
      isFeatured: false,
      category: 'Maternity',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'safe-watch',
      name: L3(en: 'SafeWatch Baby', ru: 'SafeWatch Baby', ky: 'SafeWatch Baby'),
      description: L3(
        en: 'Smart baby monitors, thermometers, and safety products.',
        ru: 'Умные видеоняни, термометры и товары безопасности.',
        ky: 'Акылдуу бала мониторлору, термометрлер жана коопсуздук товарлары.',
      ),
      icon: Icons.videocam,
      iconColor: AppColors.secondaryDark,
      rating: 4.7,
      reviewCount: 73,
      isVerified: true,
      isFeatured: false,
      category: 'Baby Gear',
      location: 'Bishkek, KG',
    ),
    Vendor(
      id: 'pure-mama',
      name: L3(en: 'PureMama', ru: 'PureMama', ky: 'PureMama'),
      description: L3(
        en: 'Organic skincare for moms and babies. No parabens, no sulfates.',
        ru: 'Органическая косметика для мам и малышей. Без парабенов, без сульфатов.',
        ky: 'Энелер жана балдар үчүн органикалык тери кароо. Парабенсиз, сульфатсыз.',
      ),
      icon: Icons.spa,
      iconColor: AppColors.stagePrePregnancy,
      rating: 4.8,
      reviewCount: 112,
      isVerified: true,
      isFeatured: false,
      category: 'Health & Care',
      location: 'Bishkek, KG',
    ),
  ];

  // ==========================================================
  // PRODUCTS
  // ==========================================================
  static const products = <Product>[
    // --- MAMA ZNAET DIAPERS ---
    Product(
      id: 'mz-diaper-s', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Diapers S', ru: 'Мама Знает подгузники S', ky: 'Мама Знает бала таңгыч S'),
      description: L3(en: 'Japanese technology, ultra-soft, breathable, wetness indicator. 3-6 kg.', ru: 'Японская технология, ультра-мягкие, дышащие, индикатор влаги. 3-6 кг.', ky: 'Жапон технологиясы, өтө жумшак, дем алуучу, нымдуулук индикатору. 3-6 кг.'),
      price: 650, icon: Icons.baby_changing_station, iconColor: AppColors.primary,
      category: 'Diapers', subcategory: 'Disposable', rating: 4.8, reviewCount: 89,
      inStock: true, isFeatured: true,
      variants: {'S 42шт': '650', 'S 84шт': '1200'},
      tags: ['newborn', 'japanese-tech', 'mama-znaet'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn],
      minAgeMonths: 0, maxAgeMonths: 3,
    ),
    Product(
      id: 'mz-diaper-m', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Diapers M', ru: 'Мама Знает подгузники M', ky: 'Мама Знает бала таңгыч M'),
      description: L3(en: 'For active babies. Elastic sides, 12-hour protection. 6-11 kg.', ru: 'Для активных малышей. Эластичные боковинки, защита 12 часов. 6-11 кг.', ky: 'Активдүү балдар үчүн. Ийкемдүү каптал, 12 саат коргоо. 6-11 кг.'),
      price: 700, icon: Icons.baby_changing_station, iconColor: AppColors.primary,
      category: 'Diapers', subcategory: 'Disposable', rating: 4.9, reviewCount: 156,
      inStock: true, isFeatured: true,
      variants: {'M 38шт': '700', 'M 76шт': '1300'},
      tags: ['baby', 'japanese-tech', 'mama-znaet', 'bestseller'],
      relevantStages: [ParentingStage.newborn], minAgeMonths: 3, maxAgeMonths: 9,
    ),
    Product(
      id: 'mz-diaper-l', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Diapers L', ru: 'Мама Знает подгузники L', ky: 'Мама Знает бала таңгыч L'),
      description: L3(en: 'Maximum absorbency, soft bands. 9-14 kg.', ru: 'Максимальная впитываемость, мягкие резинки. 9-14 кг.', ky: 'Максималдуу сиңирүү, жумшак резинкалар. 9-14 кг.'),
      price: 750, icon: Icons.baby_changing_station, iconColor: AppColors.primary,
      category: 'Diapers', subcategory: 'Disposable', rating: 4.8, reviewCount: 134,
      inStock: true, isFeatured: false,
      variants: {'L 34шт': '750', 'L 68шт': '1400'},
      tags: ['baby', 'japanese-tech', 'mama-znaet'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 6, maxAgeMonths: 18,
    ),
    Product(
      id: 'mz-diaper-xl', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Diapers XL', ru: 'Мама Знает подгузники XL', ky: 'Мама Знает бала таңгыч XL'),
      description: L3(en: 'Thin, super-absorbent, for active children. 12-17 kg.', ru: 'Тонкие, супер-впитывающие, для активных детей. 12-17 кг.', ky: 'Жука, супер-сиңирүүчү, активдүү балдар үчүн. 12-17 кг.'),
      price: 800, icon: Icons.baby_changing_station, iconColor: AppColors.primary,
      category: 'Diapers', subcategory: 'Disposable', rating: 4.7, reviewCount: 98,
      inStock: true, isFeatured: false,
      variants: {'XL 30шт': '800', 'XL 60шт': '1500'},
      tags: ['toddler', 'japanese-tech', 'mama-znaet'],
      relevantStages: [ParentingStage.toddler], minAgeMonths: 12, maxAgeMonths: 24,
    ),
    Product(
      id: 'mz-pants-m', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Pull-ups M', ru: 'Мама Знает трусики M', ky: 'Мама Знает трусик M'),
      description: L3(en: 'Pull-up diapers for crawlers. Easy to put on and take off. 6-11 kg.', ru: 'Подгузники-трусики для ползающих. Легко надевать и снимать. 6-11 кг.', ky: 'Эмгектеп жүргөндөр үчүн трусик-таңгыч. Оңой кийүү жана чечүү. 6-11 кг.'),
      price: 750, icon: Icons.child_care, iconColor: AppColors.secondary,
      category: 'Diapers', subcategory: 'Pull-ups', rating: 4.8, reviewCount: 112,
      inStock: true, isFeatured: true,
      variants: {'M 36шт': '750', 'M 72шт': '1400'},
      tags: ['crawling', 'pull-ups', 'mama-znaet'],
      relevantStages: [ParentingStage.newborn], minAgeMonths: 4, maxAgeMonths: 9,
    ),
    Product(
      id: 'mz-pants-l', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Pull-ups L', ru: 'Мама Знает трусики L', ky: 'Мама Знает трусик L'),
      description: L3(en: '360° elastic waist, easy to remove. 9-14 kg.', ru: '360° эластичный пояс, легко снимаются. 9-14 кг.', ky: '360° ийкемдүү бел, оңой чечилет. 9-14 кг.'),
      price: 800, icon: Icons.child_care, iconColor: AppColors.secondary,
      category: 'Diapers', subcategory: 'Pull-ups', rating: 4.9, reviewCount: 145,
      inStock: true, isFeatured: false,
      variants: {'L 32шт': '800', 'L 64шт': '1500'},
      tags: ['walking', 'pull-ups', 'mama-znaet', 'bestseller'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 8, maxAgeMonths: 18,
    ),
    Product(
      id: 'mz-pants-xl', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Pull-ups XL', ru: 'Мама Знает трусики XL', ky: 'Мама Знает трусик XL'),
      description: L3(en: 'For potty training. 12-17 kg.', ru: 'Для приучения к горшку. 12-17 кг.', ky: 'Горшокко көнүктүрүү үчүн. 12-17 кг.'),
      price: 850, icon: Icons.child_care, iconColor: AppColors.secondary,
      category: 'Diapers', subcategory: 'Pull-ups', rating: 4.7, reviewCount: 87,
      inStock: true, isFeatured: false,
      variants: {'XL 28шт': '850', 'XL 56шт': '1600'},
      tags: ['potty-training', 'pull-ups', 'mama-znaet'],
      relevantStages: [ParentingStage.toddler], minAgeMonths: 12, maxAgeMonths: 24,
    ),
    Product(
      id: 'mz-wipes', vendorId: 'mama-znaet',
      name: L3(en: 'Mama Znaet Wipes', ru: 'Мама Знает салфетки', ky: 'Мама Знает жумшак кагаз'),
      description: L3(en: 'Gentle wet wipes. Alcohol-free, hypoallergenic. 80 pcs.', ru: 'Нежные влажные салфетки. Без спирта, гипоаллергенные. 80 шт.', ky: 'Жумшак нымдуу кагаздар. Спиртсиз, гипоаллергендик. 80 даана.'),
      price: 250, icon: Icons.clean_hands, iconColor: AppColors.stageNewborn,
      category: 'Health & Care', subcategory: 'Wipes', rating: 4.6, reviewCount: 203,
      inStock: true, isFeatured: false,
      variants: {'80шт': '250', '3x80шт': '650'},
      tags: ['wipes', 'hypoallergenic', 'mama-znaet'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 0, maxAgeMonths: 24,
    ),

    // --- FEEDING ---
    Product(
      id: 'bottle-anti-colic', vendorId: 'bamboo-nest',
      name: L3(en: 'Anti-Colic Bottle Set', ru: 'Набор антиколиковых бутылочек', ky: 'Антиколик бөтөлкө топтому'),
      description: L3(en: 'BPA-free anti-colic bottles, slow-flow nipple. Set of 3.', ru: 'Антиколиковые бутылочки без BPA, соска медленного потока. Набор из 3 шт.', ky: 'BPA-сыз антиколик бөтөлкөлөр, жай агымдуу эмизик. 3 даанадан турган топтом.'),
      price: 1800, icon: Icons.local_drink, iconColor: AppColors.secondary,
      category: 'Feeding', subcategory: 'Bottles', rating: 4.8, reviewCount: 67,
      inStock: true, isFeatured: true,
      tags: ['anti-colic', 'bpa-free', 'newborn'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn],
      minAgeMonths: 0, maxAgeMonths: 12,
    ),
    Product(
      id: 'breast-pump', vendorId: 'comfy-mom',
      name: L3(en: 'Electric Breast Pump', ru: 'Электрический молокоотсос', ky: 'Электрдик сүт соргуч'),
      description: L3(en: 'Quiet, portable, hospital-grade suction. USB rechargeable.', ru: 'Тихий, портативный, больничный уровень всасывания. USB-зарядка.', ky: 'Тынч, кол жеткиликтүү, оорукана деңгээлиндеги соруу. USB кубаттоо.'),
      price: 4500, icon: Icons.favorite, iconColor: AppColors.primary,
      category: 'Feeding', subcategory: 'Breast Pumps', rating: 4.7, reviewCount: 45,
      inStock: true, isFeatured: true,
      tags: ['breast-pump', 'portable', 'electric'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn],
      minAgeMonths: 0, maxAgeMonths: 12,
    ),
    Product(
      id: 'silicone-bibs', vendorId: 'bamboo-nest',
      name: L3(en: 'Silicone Bib Set (3 pack)', ru: 'Набор силиконовых нагрудников (3 шт)', ky: 'Силикон алжапкыч топтому (3 даана)'),
      description: L3(en: 'Waterproof, food catcher pocket. Easy to clean. BPA-free.', ru: 'Водонепроницаемые, с карманом для еды. Легко моются. Без BPA.', ky: 'Суу өткөрбөс, тамак кармоочу чөнтөк. Оңой жуулат. BPA-сыз.'),
      price: 900, icon: Icons.restaurant_menu, iconColor: AppColors.accent,
      category: 'Feeding', subcategory: 'Bibs', rating: 4.9, reviewCount: 82,
      inStock: true, isFeatured: false,
      tags: ['bibs', 'silicone', 'solid-foods'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 4, maxAgeMonths: 24,
    ),
    Product(
      id: 'suction-plate', vendorId: 'bamboo-nest',
      name: L3(en: 'Bamboo Suction Plate', ru: 'Бамбуковая тарелка на присоске', ky: 'Бамбук соргуч табак'),
      description: L3(en: 'Eco-friendly bamboo plate with silicone suction base + spoon.', ru: 'Эко бамбуковая тарелка с силиконовой присоской + ложка.', ky: 'Экологиялык бамбук табак силикон соргуч менен + кашык.'),
      price: 1200, icon: Icons.set_meal, iconColor: AppColors.success,
      category: 'Feeding', subcategory: 'Utensils', rating: 4.6, reviewCount: 54,
      inStock: true, isFeatured: false,
      tags: ['bamboo', 'eco', 'blw', 'suction'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 6, maxAgeMonths: 24,
    ),

    // --- HEALTH & CARE ---
    Product(
      id: 'baby-lotion', vendorId: 'pure-mama',
      name: L3(en: 'Organic Baby Lotion', ru: 'Органический детский лосьон', ky: 'Органикалык бала лосьону'),
      description: L3(en: 'Shea butter, chamomile, calendula. No parabens. 250ml.', ru: 'Масло ши, ромашка, календула. Без парабенов. 250 мл.', ky: 'Ши майы, ромашка, календула. Парабенсиз. 250 мл.'),
      price: 850, icon: Icons.spa, iconColor: AppColors.stagePrePregnancy,
      category: 'Health & Care', subcategory: 'Skincare', rating: 4.9, reviewCount: 134,
      inStock: true, isFeatured: true,
      tags: ['organic', 'gentle', 'moisturizer'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 0, maxAgeMonths: 24,
    ),
    Product(
      id: 'stretch-oil', vendorId: 'pure-mama',
      name: L3(en: 'Stretch Mark Oil', ru: 'Масло от растяжек', ky: 'Созулуу издерге каршы май'),
      description: L3(en: 'Rosehip, jojoba, vitamin E. Apply daily from first trimester. 100ml.', ru: 'Шиповник, жожоба, витамин Е. Наносить ежедневно с первого триместра. 100 мл.', ky: 'Ит мурун, жожоба, витамин Е. Биринчи триместрден күн сайын колдонуу. 100 мл.'),
      price: 1200, icon: Icons.water_drop, iconColor: AppColors.stagePrePregnancy,
      category: 'Health & Care', subcategory: 'Mama Care', rating: 4.8, reviewCount: 89,
      inStock: true, isFeatured: true,
      tags: ['stretch-marks', 'pregnancy', 'organic'],
      relevantStages: [ParentingStage.pregnant],
    ),
    Product(
      id: 'thermometer', vendorId: 'safe-watch',
      name: L3(en: 'Infrared Thermometer', ru: 'Инфракрасный термометр', ky: 'Инфракызыл термометр'),
      description: L3(en: 'Instant 1-second reading. No-contact. Memory 20 readings.', ru: 'Мгновенное измерение за 1 секунду. Бесконтактный. Память 20 измерений.', ky: '1 секунддук өлчөө. Контактсыз. 20 өлчөө эс тутуму.'),
      price: 2200, icon: Icons.thermostat, iconColor: AppColors.error,
      category: 'Health & Care', subcategory: 'Devices', rating: 4.7, reviewCount: 56,
      inStock: true, isFeatured: false,
      tags: ['thermometer', 'instant', 'no-contact'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 0, maxAgeMonths: 24,
    ),

    // --- GEAR ---
    Product(
      id: 'baby-monitor', vendorId: 'safe-watch',
      name: L3(en: 'Smart Baby Monitor Pro', ru: 'Умная видеоняня Pro', ky: 'Акылдуу бала монитору Pro'),
      description: L3(en: 'HD video, night vision, 2-way audio, temp sensor, lullabies.', ru: 'HD видео, ночное видение, двусторонняя связь, датчик температуры, колыбельные.', ky: 'HD видео, түнкү көрүш, эки тараптуу байланыш, температура датчиги, бешик ырлары.'),
      price: 8500, icon: Icons.videocam, iconColor: AppColors.secondaryDark,
      category: 'Baby Gear', subcategory: 'Monitors', rating: 4.9, reviewCount: 78,
      inStock: true, isFeatured: true,
      tags: ['monitor', 'smart', 'video'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 0, maxAgeMonths: 24,
    ),
    Product(
      id: 'pregnancy-pillow', vendorId: 'comfy-mom',
      name: L3(en: 'Pregnancy Pillow', ru: 'Подушка для беременных', ky: 'Кош бойлуулар жаздыгы'),
      description: L3(en: 'U-shaped full body support. Belly, back, hips, knees. Washable.', ru: 'U-образная поддержка всего тела. Живот, спина, бёдра, колени. Стирается.', ky: 'U-формасында толук дене колдоосу. Курсак, арка, жамбаш, тизе. Жуулат.'),
      price: 3500, icon: Icons.airline_seat_flat, iconColor: AppColors.accent,
      category: 'Maternity', subcategory: 'Comfort', rating: 4.8, reviewCount: 112,
      inStock: true, isFeatured: true,
      tags: ['pillow', 'pregnancy', 'sleep'],
      relevantStages: [ParentingStage.pregnant],
    ),
    Product(
      id: 'nursing-bra', vendorId: 'comfy-mom',
      name: L3(en: 'Nursing Bra (2 pack)', ru: 'Бюстгальтер для кормления (2 шт)', ky: 'Эмизүү бюстгальтери (2 даана)'),
      description: L3(en: 'Ultra-soft, clip-down cups. No underwire. S-XXL.', ru: 'Ультра-мягкие, отстёгивающиеся чашки. Без косточек. S-XXL.', ky: 'Өтө жумшак, чечилүүчү чөйчөктөр. Тыксыз. S-XXL.'),
      price: 1800, icon: Icons.checkroom, iconColor: AppColors.stagePregnancy,
      category: 'Maternity', subcategory: 'Nursing', rating: 4.6, reviewCount: 67,
      inStock: true, isFeatured: false,
      tags: ['nursing', 'bra', 'breastfeeding'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn],
    ),

    // --- TOYS ---
    Product(
      id: 'montessori-set', vendorId: 'little-joy',
      name: L3(en: 'Montessori Baby Box 0-6m', ru: 'Монтессори набор 0-6м', ky: 'Монтессори бала топтому 0-6 ай'),
      description: L3(en: 'B&W cards, wooden rattle, teether, crinkle cloth, mirror toy.', ru: 'Чёрно-белые карточки, деревянная погремушка, прорезыватель, шуршащая ткань, зеркальная игрушка.', ky: 'Ак-кара карточкалар, жыгач шылдырак, тиш чыгаргыч, шырп кездеме, күзгү оюнчук.'),
      price: 2800, icon: Icons.redeem, iconColor: AppColors.stageToddler,
      category: 'Toys & Books', subcategory: 'Developmental', rating: 4.9, reviewCount: 89,
      inStock: true, isFeatured: true,
      tags: ['montessori', 'newborn', 'gift-set'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn],
      minAgeMonths: 0, maxAgeMonths: 6,
    ),
    Product(
      id: 'stacking-rings', vendorId: 'little-joy',
      name: L3(en: 'Wooden Stacking Rings', ru: 'Деревянные кольца-пирамидка', ky: 'Жыгач шакек пирамидка'),
      description: L3(en: 'Natural wood rainbow rings. Fine motor + color recognition.', ru: 'Радужные кольца из натурального дерева. Мелкая моторика + распознавание цветов.', ky: 'Табигый жыгач асан-үсөн шакектер. Майда моторика + түс таанып билүү.'),
      price: 1100, icon: Icons.toys, iconColor: AppColors.accent,
      category: 'Toys & Books', subcategory: 'Developmental', rating: 4.8, reviewCount: 67,
      inStock: true, isFeatured: false,
      tags: ['wooden', 'stacking', 'motor-skills'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 6, maxAgeMonths: 18,
    ),
    Product(
      id: 'board-books', vendorId: 'little-joy',
      name: L3(en: 'My First Library (10 books)', ru: 'Моя первая библиотека (10 книг)', ky: 'Менин биринчи китепканам (10 китеп)'),
      description: L3(en: 'Touch-and-feel board books: animals, colors, shapes, family.', ru: 'Тактильные картонные книги: животные, цвета, формы, семья.', ky: 'Тактилдик картон китептер: жаныбарлар, түстөр, формалар, үй-бүлө.'),
      price: 1500, icon: Icons.menu_book, iconColor: AppColors.secondary,
      category: 'Toys & Books', subcategory: 'Books', rating: 4.9, reviewCount: 134,
      inStock: true, isFeatured: true,
      tags: ['books', 'board-books', 'reading'],
      relevantStages: [ParentingStage.newborn, ParentingStage.toddler],
      minAgeMonths: 3, maxAgeMonths: 24,
    ),
    Product(
      id: 'play-dough', vendorId: 'little-joy',
      name: L3(en: 'Natural Play Dough (6 colors)', ru: 'Натуральный пластилин (6 цветов)', ky: 'Табигый пластилин (6 түс)'),
      description: L3(en: 'Non-toxic, wheat-free, safe if eaten. With tools.', ru: 'Нетоксичный, без пшеницы, безопасен при проглатывании. С инструментами.', ky: 'Уусуз, буудайсыз, жутуп алса коопсуз. Куралдар менен.'),
      price: 950, icon: Icons.palette, iconColor: Color(0xFFFF7043),
      category: 'Toys & Books', subcategory: 'Creative', rating: 4.7, reviewCount: 45,
      inStock: true, isFeatured: false,
      tags: ['play-dough', 'creative', 'non-toxic'],
      relevantStages: [ParentingStage.toddler], minAgeMonths: 12, maxAgeMonths: 24,
    ),

    // --- PHOTOGRAPHY ---
    Product(
      id: 'newborn-photo', vendorId: 'tiny-steps',
      name: L3(en: 'Newborn Photoshoot', ru: 'Фотосессия новорождённого', ky: 'Жаңы төрөлгөн бала фотосессиясы'),
      description: L3(en: '2hr studio, 20 edited photos, props included. Within 14 days of birth.', ru: '2 часа в студии, 20 обработанных фото, реквизит. В течение 14 дней после рождения.', ky: '2 саат студия, 20 иштетилген сүрөт, реквизит. Төрөлгөндөн кийин 14 күндүн ичинде.'),
      price: 15000, icon: Icons.camera_alt, iconColor: Color(0xFF7C4DFF),
      category: 'Photography', subcategory: 'Studio', rating: 5.0, reviewCount: 67,
      inStock: true, isFeatured: true,
      tags: ['newborn', 'photography', 'studio'],
      relevantStages: [ParentingStage.pregnant, ParentingStage.newborn],
      minAgeMonths: 0, maxAgeMonths: 1,
    ),
    Product(
      id: 'maternity-photo', vendorId: 'tiny-steps',
      name: L3(en: 'Maternity Photoshoot', ru: 'Фотосессия беременной', ky: 'Кош бойлуу фотосессиясы'),
      description: L3(en: '1.5hr session, 15 edited photos. Dresses provided. Best at 30-36 weeks.', ru: 'Сессия 1.5 часа, 15 обработанных фото. Платья предоставляются. Лучше на 30-36 неделе.', ky: '1.5 саат сессия, 15 иштетилген сүрөт. Көйнөктөр менен. 30-36 жумалыкта жакшы.'),
      price: 12000, icon: Icons.photo_camera, iconColor: Color(0xFF7C4DFF),
      category: 'Photography', subcategory: 'Studio', rating: 4.9, reviewCount: 45,
      inStock: true, isFeatured: true,
      tags: ['maternity', 'photography', 'pregnancy'],
      relevantStages: [ParentingStage.pregnant],
    ),
    Product(
      id: 'milestone-photos', vendorId: 'tiny-steps',
      name: L3(en: 'First Year Package', ru: 'Пакет «Первый год»', ky: '«Биринчи жыл» топтому'),
      description: L3(en: '4 sessions (3mo, 6mo, 9mo, 1yr). 40 edited photos total.', ru: '4 сессии (3м, 6м, 9м, 1 год). 40 обработанных фото всего.', ky: '4 сессия (3 ай, 6 ай, 9 ай, 1 жаш). Жалпы 40 иштетилген сүрөт.'),
      price: 35000, icon: Icons.photo_library, iconColor: Color(0xFF7C4DFF),
      category: 'Photography', subcategory: 'Packages', rating: 5.0, reviewCount: 23,
      inStock: true, isFeatured: false,
      tags: ['milestone', 'first-year', 'package'],
      relevantStages: [ParentingStage.newborn], minAgeMonths: 0, maxAgeMonths: 12,
    ),

    // --- MEALS ---
    Product(
      id: 'postpartum-meals', vendorId: 'mama-fuel',
      name: L3(en: 'Postpartum Meals (1 week)', ru: 'Послеродовое питание (1 неделя)', ky: 'Төрөттөн кийинки тамак (1 жума)'),
      description: L3(en: '21 meals: iron-rich, lactation-boosting. Delivered fresh daily.', ru: '21 блюдо: богатые железом, для лактации. Ежедневная доставка.', ky: '21 тамак: темирге бай, лактацияны жогорулатуучу. Күн сайын жаңы жеткирилет.'),
      price: 8500, icon: Icons.lunch_dining, iconColor: Color(0xFFFF7043),
      category: 'Meal Prep', subcategory: 'Plans', rating: 4.7, reviewCount: 34,
      inStock: true, isFeatured: true,
      tags: ['postpartum', 'meal-delivery', 'lactation'],
      relevantStages: [ParentingStage.newborn], minAgeMonths: 0, maxAgeMonths: 3,
    ),
    Product(
      id: 'pregnancy-meals', vendorId: 'mama-fuel',
      name: L3(en: 'Pregnancy Meals (1 week)', ru: 'Питание для беременных (1 неделя)', ky: 'Кош бойлуулар тамагы (1 жума)'),
      description: L3(en: '14 meals: folate-rich, balanced macros. GD-friendly options.', ru: '14 блюд: богатые фолатами, сбалансированные макросы. Подходит при ГД.', ky: '14 тамак: фолатка бай, тең салмактуу макростар. ГД-ге ылайыктуу варианттар.'),
      price: 6500, icon: Icons.restaurant, iconColor: Color(0xFFFF7043),
      category: 'Meal Prep', subcategory: 'Plans', rating: 4.6, reviewCount: 28,
      inStock: true, isFeatured: false,
      tags: ['pregnancy', 'nutrition', 'meal-delivery'],
      relevantStages: [ParentingStage.pregnant],
    ),
  ];

  // ==========================================================
  // HELPERS
  // ==========================================================
  static List<Product> getProductsForStage(ParentingStage stage) {
    return products.where((p) => p.relevantStages.contains(stage)).toList();
  }

  static List<Product> getProductsForAge(int ageMonths) {
    return products.where((p) {
      if (p.minAgeMonths == null && p.maxAgeMonths == null) return true;
      final min = p.minAgeMonths ?? 0;
      final max = p.maxAgeMonths ?? 99;
      return ageMonths >= min && ageMonths <= max;
    }).toList();
  }

  static List<Product> getProductsByCategory(String category) {
    return products.where((p) => p.category == category).toList();
  }

  static List<Product> getFeaturedProducts() {
    return products.where((p) => p.isFeatured).toList();
  }

  static Vendor? getVendor(String id) {
    try { return vendors.firstWhere((v) => v.id == id); } catch (_) { return null; }
  }

  static List<Product> getProductsByVendor(String vendorId) {
    return products.where((p) => p.vendorId == vendorId).toList();
  }

  static List<Product> getMamaZnaetProducts() => getProductsByVendor('mama-znaet');
}
