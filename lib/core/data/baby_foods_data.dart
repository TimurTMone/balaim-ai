import 'package:flutter/material.dart';
import '../l10n/content_localizations.dart';

/// Comprehensive baby food introduction guide — AAP/WHO aligned.
/// Helps parents safely introduce solids from 6 months to 2 years.

enum FoodCategory {
  fruits(
    L3(en: 'Fruits', ru: 'Фрукты', ky: 'Жемиштер'),
    Icons.apple,
    Color(0xFFE8787A),
  ),
  vegetables(
    L3(en: 'Vegetables', ru: 'Овощи', ky: 'Жашылчалар'),
    Icons.eco,
    Color(0xFF66BB6A),
  ),
  grains(
    L3(en: 'Grains', ru: 'Крупы', ky: 'Дан азыктар'),
    Icons.grain,
    Color(0xFFF5C15A),
  ),
  protein(
    L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
    Icons.egg,
    Color(0xFF8D6E63),
  ),
  dairy(
    L3(en: 'Dairy', ru: 'Молочные', ky: 'Сүт азыктар'),
    Icons.icecream,
    Color(0xFF4FC3F7),
  ),
  fats(
    L3(en: 'Healthy Fats', ru: 'Полезные жиры', ky: 'Пайдалуу майлар'),
    Icons.water_drop,
    Color(0xFFAED581),
  ),
  allergen(
    L3(en: 'Allergens', ru: 'Аллергены', ky: 'Аллергендер'),
    Icons.warning_amber,
    Color(0xFFEF5350),
  );

  const FoodCategory(this.label, this.icon, this.color);
  final L3 label;
  final IconData icon;
  final Color color;
}

enum FoodTexture {
  puree(
    L3(en: 'Smooth puree', ru: 'Гладкое пюре', ky: 'Жылмакай пюре'),
    L3(en: '6 months', ru: '6 месяцев', ky: '6 ай'),
  ),
  mashed(
    L3(en: 'Mashed / lumpy', ru: 'Размятое / с комочками', ky: 'Жанчылган / кесектүү'),
    L3(en: '7-8 months', ru: '7-8 месяцев', ky: '7-8 ай'),
  ),
  soft(
    L3(en: 'Soft finger foods', ru: 'Мягкая еда руками', ky: 'Жумшак кол тамак'),
    L3(en: '8-10 months', ru: '8-10 месяцев', ky: '8-10 ай'),
  ),
  chopped(
    L3(en: 'Chopped small', ru: 'Мелко нарезанное', ky: 'Майда туралган'),
    L3(en: '10-12 months', ru: '10-12 месяцев', ky: '10-12 ай'),
  ),
  familyFoods(
    L3(en: 'Family foods (cut small)', ru: 'Семейная еда (мелко)', ky: 'Үй-бүлө тамагы (майда)'),
    L3(en: '12+ months', ru: '12+ месяцев', ky: '12+ ай'),
  );

  const FoodTexture(this.label, this.ageGuide);
  final L3 label;
  final L3 ageGuide;
}

class BabyFood {
  final String id;
  final L3 name;
  final FoodCategory category;
  final int minMonths;
  final List<FoodTexture> textures;
  final L3 preparation;
  final List<L3> benefits;
  final List<L3> servingIdeas;
  final bool isCommonAllergen;
  final bool isChokingHazard;
  final L3? chokingNote;
  final L3? avoidUntilNote;

  const BabyFood({
    required this.id,
    required this.name,
    required this.category,
    required this.minMonths,
    required this.textures,
    required this.preparation,
    required this.benefits,
    required this.servingIdeas,
    this.isCommonAllergen = false,
    this.isChokingHazard = false,
    this.chokingNote,
    this.avoidUntilNote,
  });
}

class BabyFoodsData {
  BabyFoodsData._();

  static const foods = <BabyFood>[
    // ==========================================================
    // 6 MONTHS — FIRST FOODS
    // ==========================================================

    // Fruits 6m+
    BabyFood(
      id: 'avocado',
      name: L3(en: 'Avocado', ru: 'Авокадо', ky: 'Авокадо'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Ripe avocado, mashed with fork. No cooking needed.',
        ru: 'Спелое авокадо, размять вилкой. Готовить не нужно.',
        ky: 'Бышкан авокадо, вилка менен жанчуу. Бышыруу керек эмес.',
      ),
      benefits: [
        L3(en: 'Healthy fats for brain', ru: 'Полезные жиры для мозга', ky: 'Мээ үчүн пайдалуу майлар'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Potassium', ru: 'Калий', ky: 'Калий'),
        L3(en: 'Vitamin E', ru: 'Витамин Е', ky: 'Витамин Е'),
      ],
      servingIdeas: [
        L3(en: 'Mashed with breast milk or formula', ru: 'Размять с грудным молоком или смесью', ky: 'Эне сүтү же смесь менен жанчуу'),
        L3(en: 'Sliced strips (8m+ for baby-led weaning)', ru: 'Полоски (8м+ для самостоятельного прикорма)', ky: 'Тилкелер (8 айдан баланын өз алдынча тамактануусу үчүн)'),
        L3(en: 'Mashed with banana', ru: 'Размять с бананом', ky: 'Банан менен жанчуу'),
      ],
    ),
    BabyFood(
      id: 'banana',
      name: L3(en: 'Banana', ru: 'Банан', ky: 'Банан'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft, FoodTexture.chopped],
      preparation: L3(
        en: 'Ripe banana, mashed or halved lengthwise for baby-led weaning.',
        ru: 'Спелый банан, размять или разрезать вдоль для самостоятельного прикорма.',
        ky: 'Бышкан банан, жанчуу же узунунан бөлүү.',
      ),
      benefits: [
        L3(en: 'Potassium', ru: 'Калий', ky: 'Калий'),
        L3(en: 'Natural sweetness', ru: 'Натуральная сладость', ky: 'Табигый таттуулук'),
        L3(en: 'Easy to digest', ru: 'Легко усваивается', ky: 'Оңой сиңет'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Mashed alone or with avocado', ru: 'Размять отдельно или с авокадо', ky: 'Жалгыз же авокадо менен жанчуу'),
        L3(en: 'Half banana (peel on bottom half for grip)', ru: 'Половина банана (кожура снизу для хвата)', ky: 'Жарым банан (кармоо үчүн астыңкы кабыгы менен)'),
        L3(en: 'Frozen banana on a silicone teether', ru: 'Замороженный банан на силиконовом прорезывателе', ky: 'Тоңдурулган банан силикон тиш чыгаргычта'),
      ],
    ),
    BabyFood(
      id: 'sweet-potato',
      name: L3(en: 'Sweet Potato', ru: 'Батат', ky: 'Таттуу картошка'),
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Bake or steam until very soft. Mash or cut into spears.',
        ru: 'Запекать или готовить на пару до мягкости. Размять или нарезать брусочками.',
        ky: 'Бышырыңыз же буулаңыз. Жанчыңыз же тилкелеп кесиңиз.',
      ),
      benefits: [
        L3(en: 'Vitamin A', ru: 'Витамин А', ky: 'Витамин А'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Beta-carotene', ru: 'Бета-каротин', ky: 'Бета-каротин'),
        L3(en: 'Natural sweetness', ru: 'Натуральная сладость', ky: 'Табигый таттуулук'),
      ],
      servingIdeas: [
        L3(en: 'Mashed with breast milk', ru: 'Размять с грудным молоком', ky: 'Эне сүтү менен жанчуу'),
        L3(en: 'Roasted spears', ru: 'Запечённые брусочки', ky: 'Бышырылган тилкелер'),
        L3(en: 'Mixed with cinnamon (no sugar)', ru: 'Смешать с корицей (без сахара)', ky: 'Корица менен аралаштыруу (кантсыз)'),
      ],
    ),
    BabyFood(
      id: 'butternut-squash',
      name: L3(en: 'Butternut Squash', ru: 'Мускатная тыква', ky: 'Мускат ашкабагы'),
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Roast or steam until soft. Remove skin, mash or puree.',
        ru: 'Запекать или готовить на пару. Снять кожуру, размять или пюрировать.',
        ky: 'Бышырыңыз же буулаңыз. Кабыгын алыңыз, жанчыңыз.',
      ),
      benefits: [
        L3(en: 'Vitamin A', ru: 'Витамин А', ky: 'Витамин А'),
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Pureed smooth', ru: 'Однородное пюре', ky: 'Жылмакай пюре'),
        L3(en: 'Mixed with cinnamon or nutmeg', ru: 'Смешать с корицей или мускатным орехом', ky: 'Корица же мускат жаңгагы менен'),
        L3(en: 'Soft roasted cubes', ru: 'Мягкие запечённые кубики', ky: 'Жумшак бышырылган кубиктер'),
      ],
    ),
    BabyFood(
      id: 'oatmeal',
      name: L3(en: 'Iron-Fortified Oatmeal', ru: 'Овсянка с железом', ky: 'Темир кошулган сулу жарма'),
      category: FoodCategory.grains,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: L3(
        en: 'Mix iron-fortified infant oatmeal with breast milk or formula.',
        ru: 'Смешать детскую овсянку с железом с грудным молоком или смесью.',
        ky: 'Темир кошулган бала сулу жармасын эне сүтү же смесь менен аралаштыруу.',
      ),
      benefits: [
        L3(en: 'Iron (crucial after 6 months)', ru: 'Железо (важно после 6 месяцев)', ky: 'Темир (6 айдан кийин маанилүү)'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'B vitamins', ru: 'Витамины группы B', ky: 'B тобундагы витаминдер'),
      ],
      servingIdeas: [
        L3(en: 'Thin with breast milk for first feeds', ru: 'Разбавить грудным молоком для первых кормлений', ky: 'Биринчи тамактануу үчүн эне сүтү менен суюлтуу'),
        L3(en: 'Add mashed banana', ru: 'Добавить размятый банан', ky: 'Жанчылган банан кошуу'),
        L3(en: 'Mix with pureed fruit', ru: 'Смешать с фруктовым пюре', ky: 'Жемиш пюреси менен аралаштыруу'),
      ],
    ),
    BabyFood(
      id: 'iron-rice-cereal',
      name: L3(en: 'Iron-Fortified Rice Cereal', ru: 'Рисовая каша с железом', ky: 'Темир кошулган күрүч ботко'),
      category: FoodCategory.grains,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: L3(
        en: 'Mix with breast milk, formula, or water.',
        ru: 'Смешать с грудным молоком, смесью или водой.',
        ky: 'Эне сүтү, смесь же суу менен аралаштыруу.',
      ),
      benefits: [
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Gentle on tummy', ru: 'Легко для животика', ky: 'Ичегиге жеңил'),
        L3(en: 'Easy to thicken other foods', ru: 'Легко загустить другую еду', ky: 'Башка тамактарды коюлтуу үчүн ыңгайлуу'),
      ],
      servingIdeas: [
        L3(en: 'As first food mixed with milk', ru: 'Как первая еда с молоком', ky: 'Биринчи тамак катары сүт менен'),
        L3(en: 'Mix in fruit puree', ru: 'Смешать с фруктовым пюре', ky: 'Жемиш пюреси менен аралаштыруу'),
        L3(en: 'Alternate with oatmeal for variety', ru: 'Чередовать с овсянкой для разнообразия', ky: 'Ар түрдүүлүк үчүн сулу жарма менен кезектештирүү'),
      ],
    ),
    BabyFood(
      id: 'chicken-puree',
      name: L3(en: 'Chicken', ru: 'Курица', ky: 'Тоок эти'),
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.soft, FoodTexture.chopped],
      preparation: L3(
        en: 'Cook thoroughly, puree with broth or breast milk, or shred soft pieces.',
        ru: 'Хорошо приготовить, пюрировать с бульоном или грудным молоком, или измельчить.',
        ky: 'Жакшы бышырыңыз, сорпо же эне сүтү менен пюрелеңиз, же майдалаңыз.',
      ),
      benefits: [
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Zinc', ru: 'Цинк', ky: 'Цинк'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'B vitamins', ru: 'Витамины группы B', ky: 'B тобундагы витаминдер'),
      ],
      servingIdeas: [
        L3(en: 'Pureed with sweet potato', ru: 'Пюре с бататом', ky: 'Таттуу картошка менен пюре'),
        L3(en: 'Shredded over rice', ru: 'Измельчённая поверх риса', ky: 'Күрүч үстүнө майдаланган'),
        L3(en: 'Soft-cooked strips (baby-led weaning)', ru: 'Мягкие полоски (самостоятельный прикорм)', ky: 'Жумшак бышырылган тилкелер'),
      ],
    ),
    BabyFood(
      id: 'lentils',
      name: L3(en: 'Lentils', ru: 'Чечевица', ky: 'Жашыл буурчак'),
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Cook until very soft, mash or puree. No salt.',
        ru: 'Варить до мягкости, размять или пюрировать. Без соли.',
        ky: 'Жумшак болгонго чейин бышырыңыз, жанчыңыз. Тузсуз.',
      ),
      benefits: [
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Folate', ru: 'Фолиевая кислота', ky: 'Фолий кислотасы'),
      ],
      servingIdeas: [
        L3(en: 'Mashed red lentils with cumin', ru: 'Размятая красная чечевица с тмином', ky: 'Зире менен жанчылган кызыл буурчак'),
        L3(en: 'Lentil puree with vegetables', ru: 'Чечевичное пюре с овощами', ky: 'Жашылчалуу буурчак пюреси'),
        L3(en: 'Soft-cooked green lentils', ru: 'Мягко сваренная зелёная чечевица', ky: 'Жумшак бышырылган жашыл буурчак'),
      ],
    ),

    // ==========================================================
    // ALLERGENS — INTRODUCE EARLY (4-6 months per AAP)
    // ==========================================================
    BabyFood(
      id: 'peanut',
      name: L3(en: 'Peanut (smooth)', ru: 'Арахис (гладкий)', ky: 'Жержаңгак (жылмакай)'),
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: L3(
        en: 'Mix 1-2 teaspoons smooth peanut butter into puree or mix with warm water to thin.',
        ru: 'Смешать 1-2 чайные ложки гладкой арахисовой пасты в пюре или разбавить тёплой водой.',
        ky: '1-2 чай кашык жылмакай жержаңгак майын пюреге кошуңуз же жылуу суу менен суюлтуңуз.',
      ),
      benefits: [
        L3(en: 'Early introduction reduces allergy risk by up to 80%', ru: 'Раннее введение снижает риск аллергии до 80%', ky: 'Эрте киргизүү аллергия тобокелин 80% га азайтат'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Healthy fats', ru: 'Полезные жиры', ky: 'Пайдалуу майлар'),
      ],
      servingIdeas: [
        L3(en: 'Thin peanut butter with breast milk', ru: 'Разбавить арахисовую пасту грудным молоком', ky: 'Жержаңгак майын эне сүтү менен суюлтуу'),
        L3(en: 'Stir into oatmeal', ru: 'Размешать в овсянке', ky: 'Сулу жармага аралаштыруу'),
        L3(en: 'Mix with banana', ru: 'Смешать с бананом', ky: 'Банан менен аралаштыруу'),
      ],
      isCommonAllergen: true,
      isChokingHazard: true,
      chokingNote: L3(
        en: 'NEVER give whole peanuts or chunks of peanut butter on a spoon before age 4.',
        ru: 'НИКОГДА не давайте целый арахис или кусочки арахисовой пасты на ложке до 4 лет.',
        ky: '4 жашка чейин ЭЧКАЧАН бүтүн жержаңгак же кашыктагы жержаңгак май кесектерин бербеңиз.',
      ),
    ),
    BabyFood(
      id: 'egg',
      name: L3(en: 'Egg', ru: 'Яйцо', ky: 'Жумуртка'),
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Fully cooked. Scramble, hard-boil, or make omelette strips.',
        ru: 'Полностью приготовить. Яичница-болтунья, вкрутую или омлет полосками.',
        ky: 'Толук бышырылган. Чылап бышырыңыз, катуу кайнатыңыз же омлет тилкелери.',
      ),
      benefits: [
        L3(en: 'Choline for brain', ru: 'Холин для мозга', ky: 'Мээ үчүн холин'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Vitamin D', ru: 'Витамин D', ky: 'Витамин D'),
      ],
      servingIdeas: [
        L3(en: 'Scrambled with a splash of breast milk', ru: 'Яичница с каплей грудного молока', ky: 'Эне сүтү менен чылап бышырылган жумуртка'),
        L3(en: 'Hard-boiled yolk mashed with avocado', ru: 'Варёный желток с авокадо', ky: 'Бышырылган сарысу авокадо менен жанчылган'),
        L3(en: 'Omelette strips for baby-led weaning', ru: 'Полоски омлета для самостоятельного прикорма', ky: 'Баланын өз алдынча тамактануусу үчүн омлет тилкелери'),
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'yogurt',
      name: L3(en: 'Whole-Milk Yogurt', ru: 'Цельный йогурт', ky: 'Толук майлуу йогурт'),
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: L3(
        en: 'Plain whole-milk yogurt only. No added sugar or flavors.',
        ru: 'Только натуральный цельный йогурт. Без сахара и добавок.',
        ky: 'Жөнөкөй толук майлуу йогурт гана. Кант же татымалдарсыз.',
      ),
      benefits: [
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
        L3(en: 'Probiotics', ru: 'Пробиотики', ky: 'Пробиотиктер'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Vitamin D', ru: 'Витамин D', ky: 'Витамин D'),
      ],
      servingIdeas: [
        L3(en: 'Plain as a snack', ru: 'Просто как перекус', ky: 'Тамак арасында жөнөкөй'),
        L3(en: 'Mixed with mashed fruit', ru: 'Смешать с фруктовым пюре', ky: 'Жанчылган жемиш менен аралаштыруу'),
        L3(en: 'Swirled with pureed vegetables', ru: 'Смешать с овощным пюре', ky: 'Жашылча пюреси менен аралаштыруу'),
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'salmon',
      name: L3(en: 'Salmon', ru: 'Лосось', ky: 'Лосось'),
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Cook fully. Remove all bones. Flake apart or puree.',
        ru: 'Полностью приготовить. Удалить все кости. Разделить на хлопья или пюрировать.',
        ky: 'Толук бышырыңыз. Бардык сөөктөрүн алыңыз. Бөлүп-бөлүп же пюрелеңиз.',
      ),
      benefits: [
        L3(en: 'Omega-3 (DHA) for brain', ru: 'Омега-3 (DHA) для мозга', ky: 'Мээ үчүн Омега-3 (DHA)'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Vitamin D', ru: 'Витамин D', ky: 'Витамин D'),
      ],
      servingIdeas: [
        L3(en: 'Flaked on top of rice', ru: 'Хлопьями поверх риса', ky: 'Күрүч үстүнө бөлүп-бөлүп'),
        L3(en: 'Mixed with sweet potato puree', ru: 'Смешать с пюре из батата', ky: 'Таттуу картошка пюреси менен'),
        L3(en: 'Small baked patty', ru: 'Маленькая запечённая котлетка', ky: 'Кичинекей бышырылган котлет'),
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'wheat',
      name: L3(en: 'Wheat', ru: 'Пшеница', ky: 'Буудай'),
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Introduce via iron-fortified cereal, soft bread, or pasta.',
        ru: 'Вводить через кашу с железом, мягкий хлеб или макароны.',
        ky: 'Темир кошулган ботко, жумшак нан же макарон аркылуу киргизүү.',
      ),
      benefits: [
        L3(en: 'Iron (fortified)', ru: 'Железо (обогащённое)', ky: 'Темир (байытылган)'),
        L3(en: 'B vitamins', ru: 'Витамины группы B', ky: 'B тобундагы витаминдер'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Infant wheat cereal', ru: 'Детская пшеничная каша', ky: 'Балдар буудай боткосу'),
        L3(en: 'Small pasta pieces (after 9m)', ru: 'Маленькие кусочки макарон (после 9м)', ky: 'Кичинекей макарон кесектери (9 айдан кийин)'),
        L3(en: 'Toast strips (after 9m)', ru: 'Полоски тоста (после 9м)', ky: 'Нан тилкелери (9 айдан кийин)'),
      ],
      isCommonAllergen: true,
    ),

    // ==========================================================
    // 7-8 MONTHS — EXPANDING VARIETY
    // ==========================================================
    BabyFood(
      id: 'apple',
      name: L3(en: 'Apple', ru: 'Яблоко', ky: 'Алма'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Steam or bake until very soft. Peel, core, mash.',
        ru: 'Готовить на пару или запекать до мягкости. Очистить, удалить сердцевину, размять.',
        ky: 'Жумшак болгонго чейин буулаңыз же бышырыңыз. Кабыгын алып, жанчыңыз.',
      ),
      benefits: [
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Antioxidants', ru: 'Антиоксиданты', ky: 'Антиоксиданттар'),
      ],
      servingIdeas: [
        L3(en: 'Homemade applesauce', ru: 'Домашнее яблочное пюре', ky: 'Үйдө жасалган алма пюреси'),
        L3(en: 'Baked apple slices', ru: 'Запечённые дольки яблока', ky: 'Бышырылган алма тилкелери'),
        L3(en: 'Pureed with cinnamon', ru: 'Пюре с корицей', ky: 'Корица менен пюре'),
      ],
      isChokingHazard: true,
      chokingNote: L3(
        en: 'Raw apple is a choking hazard until 3+ years. Always cook or grate finely.',
        ru: 'Сырое яблоко — опасность удушья до 3+ лет. Всегда готовьте или мелко натирайте.',
        ky: 'Чийки алма 3+ жашка чейин тумчугу коркунучу. Дайыма бышырыңыз же майда үгүңүз.',
      ),
    ),
    BabyFood(
      id: 'pear',
      name: L3(en: 'Pear', ru: 'Груша', ky: 'Алмурут'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Ripe pear, steam or serve ripe. Peel and mash.',
        ru: 'Спелая груша, готовить на пару или подать спелую. Очистить и размять.',
        ky: 'Бышкан алмурут, буулаңыз же бышканын бериңиз. Кабыгын алып, жанчыңыз.',
      ),
      benefits: [
        L3(en: 'Fiber (helps with constipation)', ru: 'Клетчатка (помогает при запоре)', ky: 'Клетчатка (ич катуулукта жардам берет)'),
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Gentle', ru: 'Мягко действует', ky: 'Жумшак таасир этет'),
      ],
      servingIdeas: [
        L3(en: 'Ripe mashed pear', ru: 'Размятая спелая груша', ky: 'Жанчылган бышкан алмурут'),
        L3(en: 'Poached pear slices', ru: 'Тушёные ломтики груши', ky: 'Кайнатылган алмурут тилкелери'),
        L3(en: 'Mixed with oatmeal', ru: 'Смешать с овсянкой', ky: 'Сулу жарма менен аралаштыруу'),
      ],
    ),
    BabyFood(
      id: 'peach',
      name: L3(en: 'Peach', ru: 'Персик', ky: 'Шабдалы'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Ripe peach, peeled, pitted, mashed. Stew if not very soft.',
        ru: 'Спелый персик, очистить, удалить косточку, размять. Потушить если не очень мягкий.',
        ky: 'Бышкан шабдалы, кабыгын алып, данегин алып, жанчыңыз. Жумшак болбосо кайнатыңыз.',
      ),
      benefits: [
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Vitamin A', ru: 'Витамин А', ky: 'Витамин А'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Mashed ripe peach', ru: 'Размятый спелый персик', ky: 'Жанчылган бышкан шабдалы'),
        L3(en: 'Stewed slices', ru: 'Тушёные ломтики', ky: 'Кайнатылган тилкелер'),
        L3(en: 'Mixed with yogurt', ru: 'Смешать с йогуртом', ky: 'Йогурт менен аралаштыруу'),
      ],
    ),
    BabyFood(
      id: 'blueberries',
      name: L3(en: 'Blueberries', ru: 'Черника', ky: 'Черника'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Smash each berry between fingers, or cut in half/quarters.',
        ru: 'Раздавить каждую ягоду пальцами или разрезать на половинки/четвертинки.',
        ky: 'Ар бир жемишти манжалар менен жанчыңыз, же жарымга/төрткө бөлүңүз.',
      ),
      benefits: [
        L3(en: 'Antioxidants', ru: 'Антиоксиданты', ky: 'Антиоксиданттар'),
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Smashed into yogurt', ru: 'Раздавить в йогурте', ky: 'Йогуртка жанчуу'),
        L3(en: 'Halved and served on high chair', ru: 'Половинками на высоком стульчике', ky: 'Жарымдалып бийик отургучта берүү'),
        L3(en: 'Thawed frozen blueberries', ru: 'Размороженная замороженная черника', ky: 'Эритилген тоңдурулган черника'),
      ],
      isChokingHazard: true,
      chokingNote: L3(
        en: 'Always smash or quarter for babies under 12m.',
        ru: 'Всегда раздавливайте или делите на четвертинки для детей до 12 месяцев.',
        ky: '12 айга чейинки балдар үчүн дайыма жанчыңыз же төрткө бөлүңүз.',
      ),
    ),
    BabyFood(
      id: 'broccoli',
      name: L3(en: 'Broccoli', ru: 'Брокколи', ky: 'Брокколи'),
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Steam until very soft. Puree or serve as florets.',
        ru: 'Готовить на пару до мягкости. Пюрировать или подать соцветиями.',
        ky: 'Жумшак болгонго чейин буулаңыз. Пюрелеңиз же гүлдөрүн бериңиз.',
      ),
      benefits: [
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
      ],
      servingIdeas: [
        L3(en: 'Steamed florets (baby-led weaning)', ru: 'Соцветия на пару (самостоятельный прикорм)', ky: 'Буулаган гүлдөрү (баланын өз алдынча тамактануусу)'),
        L3(en: 'Pureed with garlic', ru: 'Пюре с чесноком', ky: 'Сарымсак менен пюре'),
        L3(en: 'Mixed with rice', ru: 'Смешать с рисом', ky: 'Күрүч менен аралаштыруу'),
      ],
    ),
    BabyFood(
      id: 'carrot',
      name: L3(en: 'Carrot', ru: 'Морковь', ky: 'Сабиз'),
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Steam or roast until very soft. Puree or serve soft spears.',
        ru: 'Готовить на пару или запекать до мягкости. Пюрировать или подать мягкими брусочками.',
        ky: 'Жумшак болгонго чейин буулаңыз же бышырыңыз. Пюрелеңиз же жумшак тилкелер бериңиз.',
      ),
      benefits: [
        L3(en: 'Beta-carotene', ru: 'Бета-каротин', ky: 'Бета-каротин'),
        L3(en: 'Vitamin A', ru: 'Витамин А', ky: 'Витамин А'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Pureed smooth', ru: 'Однородное пюре', ky: 'Жылмакай пюре'),
        L3(en: 'Soft-roasted spears', ru: 'Мягкие запечённые брусочки', ky: 'Жумшак бышырылган тилкелер'),
        L3(en: 'Mashed with cumin', ru: 'Размять с тмином', ky: 'Зире менен жанчуу'),
      ],
      isChokingHazard: true,
      chokingNote: L3(
        en: 'Raw carrots are a choking hazard until 4+ years.',
        ru: 'Сырая морковь — опасность удушья до 4+ лет.',
        ky: 'Чийки сабиз 4+ жашка чейин тумчугу коркунучу.',
      ),
    ),
    BabyFood(
      id: 'peas',
      name: L3(en: 'Peas', ru: 'Горошек', ky: 'Жашыл буурчак'),
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Cook fully. Mash or smash each pea.',
        ru: 'Полностью сварить. Размять или раздавить каждую горошинку.',
        ky: 'Толук бышырыңыз. Ар бир буурчакты жанчыңыз.',
      ),
      benefits: [
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
      ],
      servingIdeas: [
        L3(en: 'Pureed with mint', ru: 'Пюре с мятой', ky: 'Жалбыз менен пюре'),
        L3(en: 'Smashed as finger food', ru: 'Раздавленный как еда руками', ky: 'Кол тамак катары жанчылган'),
        L3(en: 'Mixed with mashed potato', ru: 'Смешать с картофельным пюре', ky: 'Картошка пюреси менен аралаштыруу'),
      ],
    ),
    BabyFood(
      id: 'spinach',
      name: L3(en: 'Spinach', ru: 'Шпинат', ky: 'Шпинат'),
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree],
      preparation: L3(
        en: 'Cook fully, puree smooth. High in iron.',
        ru: 'Полностью приготовить, пюрировать. Много железа.',
        ky: 'Толук бышырыңыз, жылмакай пюрелеңиз. Темирге бай.',
      ),
      benefits: [
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Folate', ru: 'Фолиевая кислота', ky: 'Фолий кислотасы'),
        L3(en: 'Vitamin K', ru: 'Витамин К', ky: 'Витамин К'),
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
      ],
      servingIdeas: [
        L3(en: 'Pureed with apple', ru: 'Пюре с яблоком', ky: 'Алма менен пюре'),
        L3(en: 'Mixed into oatmeal', ru: 'Смешать с овсянкой', ky: 'Сулу жармага аралаштыруу'),
        L3(en: 'Blended into soft eggs', ru: 'Смешать с мягкими яйцами', ky: 'Жумшак жумурткага аралаштыруу'),
      ],
    ),
    BabyFood(
      id: 'beef',
      name: L3(en: 'Beef', ru: 'Говядина', ky: 'Уй эти'),
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Cook fully. Puree or shred into very small pieces.',
        ru: 'Полностью приготовить. Пюрировать или измельчить на очень мелкие кусочки.',
        ky: 'Толук бышырыңыз. Пюрелеңиз же өтө майда кесектерге майдалаңыз.',
      ),
      benefits: [
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Zinc', ru: 'Цинк', ky: 'Цинк'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'B12', ru: 'B12', ky: 'B12'),
      ],
      servingIdeas: [
        L3(en: 'Pureed with carrots', ru: 'Пюре с морковью', ky: 'Сабиз менен пюре'),
        L3(en: 'Shredded over rice', ru: 'Измельчённая поверх риса', ky: 'Күрүч үстүнө майдаланган'),
        L3(en: 'Soft meatballs (cut small)', ru: 'Мягкие тефтели (мелко нарезать)', ky: 'Жумшак тефтелдер (майда кесилген)'),
      ],
    ),
    BabyFood(
      id: 'black-beans',
      name: L3(en: 'Black Beans', ru: 'Чёрная фасоль', ky: 'Кара буурчак'),
      category: FoodCategory.protein,
      minMonths: 7,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Cook fully, mash. Rinse canned beans to reduce sodium.',
        ru: 'Полностью сварить, размять. Промыть консервированную фасоль для снижения натрия.',
        ky: 'Толук бышырыңыз, жанчыңыз. Натрийди азайтуу үчүн консервирленген буурчакты жуңуз.',
      ),
      benefits: [
        L3(en: 'Plant protein', ru: 'Растительный белок', ky: 'Өсүмдүк белогу'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Folate', ru: 'Фолиевая кислота', ky: 'Фолий кислотасы'),
      ],
      servingIdeas: [
        L3(en: 'Mashed with avocado', ru: 'Размять с авокадо', ky: 'Авокадо менен жанчуу'),
        L3(en: 'Mixed with rice', ru: 'Смешать с рисом', ky: 'Күрүч менен аралаштыруу'),
        L3(en: 'Smashed as finger food', ru: 'Раздавить как еду руками', ky: 'Кол тамак катары жанчуу'),
      ],
    ),
    BabyFood(
      id: 'tofu',
      name: L3(en: 'Tofu', ru: 'Тофу', ky: 'Тофу'),
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Use soft or silken tofu. Cube or mash.',
        ru: 'Использовать мягкий или шёлковый тофу. Нарезать кубиками или размять.',
        ky: 'Жумшак же жибек тофу колдонуңуз. Кубиктерге кесиңиз же жанчыңыз.',
      ),
      benefits: [
        L3(en: 'Plant protein', ru: 'Растительный белок', ky: 'Өсүмдүк белогу'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
      ],
      servingIdeas: [
        L3(en: 'Soft cubes on high chair', ru: 'Мягкие кубики на высоком стульчике', ky: 'Бийик отургучта жумшак кубиктер'),
        L3(en: 'Mashed with vegetables', ru: 'Размять с овощами', ky: 'Жашылчалар менен жанчуу'),
        L3(en: 'Crumbled into soft scramble', ru: 'Раскрошить в мягкую яичницу', ky: 'Жумшак жумуртка менен үгүтүү'),
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'cottage-cheese',
      name: L3(en: 'Cottage Cheese', ru: 'Творог', ky: 'Быштак'),
      category: FoodCategory.dairy,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Use whole-milk, full-fat. Small curds or mashed.',
        ru: 'Использовать цельный, жирный. Мелкозернистый или размятый.',
        ky: 'Толук майлуу колдонуңуз. Майда же жанчылган.',
      ),
      benefits: [
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Vitamin B12', ru: 'Витамин B12', ky: 'Витамин B12'),
      ],
      servingIdeas: [
        L3(en: 'Plain as finger food', ru: 'Просто как еда руками', ky: 'Кол тамак катары жөнөкөй'),
        L3(en: 'Mixed with fruit', ru: 'Смешать с фруктами', ky: 'Жемиштер менен аралаштыруу'),
        L3(en: 'Stirred into pasta', ru: 'Размешать в макаронах', ky: 'Макаронго аралаштыруу'),
      ],
      isCommonAllergen: true,
    ),

    // ==========================================================
    // 9-12 MONTHS — FINGER FOODS & TEXTURES
    // ==========================================================
    BabyFood(
      id: 'pasta',
      name: L3(en: 'Pasta', ru: 'Макароны', ky: 'Макарон'),
      category: FoodCategory.grains,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: L3(
        en: 'Cook until soft (slightly overcooked). Small shapes best.',
        ru: 'Варить до мягкости (слегка переварить). Лучше мелкие формы.',
        ky: 'Жумшак болгонго чейин бышырыңыз. Кичинекей формалары жакшы.',
      ),
      benefits: [
        L3(en: 'Iron (fortified)', ru: 'Железо (обогащённое)', ky: 'Темир (байытылган)'),
        L3(en: 'Energy', ru: 'Энергия', ky: 'Энергия'),
        L3(en: 'Easy to chew', ru: 'Легко жевать', ky: 'Оңой чайнаш'),
      ],
      servingIdeas: [
        L3(en: 'Pastina with butter', ru: 'Пастина с маслом', ky: 'Май менен пастина'),
        L3(en: 'Small shells with tomato sauce', ru: 'Мелкие ракушки с томатным соусом', ky: 'Помидор соусу менен кичинекей макарон'),
        L3(en: 'Orzo with vegetables', ru: 'Орзо с овощами', ky: 'Жашылчалуу орзо'),
      ],
    ),
    BabyFood(
      id: 'bread',
      name: L3(en: 'Bread', ru: 'Хлеб', ky: 'Нан'),
      category: FoodCategory.grains,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: L3(
        en: 'Soft whole-grain bread. Cut into strips or small pieces.',
        ru: 'Мягкий цельнозерновой хлеб. Нарезать полосками или мелкими кусочками.',
        ky: 'Жумшак дан нан. Тилкелер же кичинекей кесектер менен кесиңиз.',
      ),
      benefits: [
        L3(en: 'Iron (whole grain)', ru: 'Железо (цельнозерновой)', ky: 'Темир (дан)'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Practice chewing', ru: 'Тренировка жевания', ky: 'Чайноону машыктыруу'),
      ],
      servingIdeas: [
        L3(en: 'Toast strips with avocado', ru: 'Полоски тоста с авокадо', ky: 'Авокадо менен нан тилкелери'),
        L3(en: 'Soft whole wheat squares', ru: 'Мягкие цельнозерновые квадратики', ky: 'Жумшак дан нан чарчылары'),
        L3(en: 'Mini sandwiches cut small', ru: 'Мини-сэндвичи мелко нарезать', ky: 'Кичинекей кесилген мини бутерброддор'),
      ],
      isCommonAllergen: true,
      avoidUntilNote: L3(
        en: 'Avoid honey until 12 months.',
        ru: 'Мёд избегать до 12 месяцев.',
        ky: '12 айга чейин бал бербеңиз.',
      ),
    ),
    BabyFood(
      id: 'quinoa',
      name: L3(en: 'Quinoa', ru: 'Киноа', ky: 'Киноа'),
      category: FoodCategory.grains,
      minMonths: 8,
      textures: [FoodTexture.soft],
      preparation: L3(
        en: 'Cook until soft and fluffy. Complete protein.',
        ru: 'Варить до мягкости и рассыпчатости. Полноценный белок.',
        ky: 'Жумшак жана уюлгуй болгонго чейин бышырыңыз. Толук белок.',
      ),
      benefits: [
        L3(en: 'Complete protein', ru: 'Полноценный белок', ky: 'Толук белок'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Magnesium', ru: 'Магний', ky: 'Магний'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
      ],
      servingIdeas: [
        L3(en: 'Mixed with vegetables', ru: 'Смешать с овощами', ky: 'Жашылчалар менен аралаштыруу'),
        L3(en: 'With shredded chicken', ru: 'С измельчённой курицей', ky: 'Майдаланган тоок эти менен'),
        L3(en: 'Warm breakfast bowl', ru: 'Тёплая каша на завтрак', ky: 'Жылуу эртең мененки ботко'),
      ],
    ),
    BabyFood(
      id: 'cheese-cubes',
      name: L3(en: 'Cheese (soft)', ru: 'Сыр (мягкий)', ky: 'Сыр (жумшак)'),
      category: FoodCategory.dairy,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: L3(
        en: 'Soft pasteurized cheeses. Small cubes or shreds.',
        ru: 'Мягкие пастеризованные сыры. Мелкие кубики или соломка.',
        ky: 'Жумшак пастеризацияланган сырлар. Кичинекей кубиктер же соломка.',
      ),
      benefits: [
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Fat for brain', ru: 'Жиры для мозга', ky: 'Мээ үчүн майлар'),
      ],
      servingIdeas: [
        L3(en: 'Mozzarella cubes', ru: 'Кубики моцареллы', ky: 'Моцарелла кубиктери'),
        L3(en: 'Shredded mild cheddar', ru: 'Тёртый мягкий чеддер', ky: 'Үккөн жумшак чеддер'),
        L3(en: 'String cheese torn into strips', ru: 'Сыр-косичка тонкими полосками', ky: 'Жипче сыр тилкелерге бөлүнгөн'),
      ],
      isCommonAllergen: true,
      avoidUntilNote: L3(
        en: 'Avoid unpasteurized cheeses until 2+.',
        ru: 'Непастеризованные сыры избегать до 2+ лет.',
        ky: '2+ жашка чейин пастеризацияланбаган сырлардан алыс болуңуз.',
      ),
    ),
    BabyFood(
      id: 'meatballs',
      name: L3(en: 'Meatballs', ru: 'Тефтели', ky: 'Тефтелдер'),
      category: FoodCategory.protein,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: L3(
        en: 'Soft mini meatballs. Cut in half for safety.',
        ru: 'Мягкие мини-тефтели. Разрезать пополам для безопасности.',
        ky: 'Жумшак мини тефтелдер. Коопсуздук үчүн жарымга бөлүңүз.',
      ),
      benefits: [
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Zinc', ru: 'Цинк', ky: 'Цинк'),
      ],
      servingIdeas: [
        L3(en: 'Soft beef meatballs', ru: 'Мягкие тефтели из говядины', ky: 'Жумшак уй эт тефтелдери'),
        L3(en: 'Chicken meatballs with veggies', ru: 'Куриные тефтели с овощами', ky: 'Жашылчалуу тоок тефтелдери'),
        L3(en: 'Turkey meatballs cut small', ru: 'Мелко нарезанные тефтели из индейки', ky: 'Майда кесилген күрчүт тефтелдери'),
      ],
    ),
    BabyFood(
      id: 'hummus',
      name: L3(en: 'Hummus', ru: 'Хумус', ky: 'Хумус'),
      category: FoodCategory.protein,
      minMonths: 8,
      textures: [FoodTexture.puree],
      preparation: L3(
        en: 'Plain hummus (watch sesame/tahini for allergy).',
        ru: 'Обычный хумус (следить за аллергией на кунжут/тахини).',
        ky: 'Жөнөкөй хумус (кунжут/тахини аллергиясын байкаңыз).',
      ),
      benefits: [
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Iron', ru: 'Железо', ky: 'Темир'),
        L3(en: 'Healthy fats', ru: 'Полезные жиры', ky: 'Пайдалуу майлар'),
      ],
      servingIdeas: [
        L3(en: 'On toast strips', ru: 'На полосках тоста', ky: 'Нан тилкелерине'),
        L3(en: 'Dipping sauce for soft veggies', ru: 'Соус для макания мягких овощей', ky: 'Жумшак жашылчалар үчүн соус'),
        L3(en: 'Mixed into mashed vegetables', ru: 'Смешать с овощным пюре', ky: 'Жашылча пюресине аралаштыруу'),
      ],
      isCommonAllergen: true,
    ),

    // ==========================================================
    // 12+ MONTHS — FAMILY FOODS
    // ==========================================================
    BabyFood(
      id: 'cow-milk',
      name: L3(en: "Whole Cow's Milk", ru: 'Цельное коровье молоко', ky: 'Толук уй сүтү'),
      category: FoodCategory.dairy,
      minMonths: 12,
      textures: [],
      preparation: L3(
        en: 'As a drink with meals. Max 480ml/day.',
        ru: 'Как напиток с едой. Максимум 480 мл/день.',
        ky: 'Тамак менен ичимдик катары. Максимум 480 мл/күнүнө.',
      ),
      benefits: [
        L3(en: 'Calcium', ru: 'Кальций', ky: 'Кальций'),
        L3(en: 'Vitamin D', ru: 'Витамин D', ky: 'Витамин D'),
        L3(en: 'Protein', ru: 'Белок', ky: 'Белок'),
        L3(en: 'Fat', ru: 'Жиры', ky: 'Майлар'),
      ],
      servingIdeas: [
        L3(en: 'In a sippy cup with meals', ru: 'В поильнике с едой', ky: 'Тамак менен чүмүч кеседе'),
        L3(en: 'Avoid as a bottle at bedtime', ru: 'Не давать в бутылочке на ночь', ky: 'Уктоор алдында бөтөлкө менен бербеңиз'),
        L3(en: 'Limit to 480ml/day (blocks iron absorption)', ru: 'Ограничить до 480 мл/день (блокирует усвоение железа)', ky: '480 мл/күн менен чектеңиз (темир сиңирүүгө тоскоол болот)'),
      ],
      isCommonAllergen: true,
      avoidUntilNote: L3(
        en: "NEVER give cow's milk as a main drink before 12 months.",
        ru: 'НИКОГДА не давайте коровье молоко как основной напиток до 12 месяцев.',
        ky: '12 айга чейин ЭЧКАЧАН уй сүтүн негизги ичимдик катары бербеңиз.',
      ),
    ),
    BabyFood(
      id: 'honey',
      name: L3(en: 'Honey', ru: 'Мёд', ky: 'Бал'),
      category: FoodCategory.grains,
      minMonths: 12,
      textures: [],
      preparation: L3(
        en: 'Only after 12 months. Any amount.',
        ru: 'Только после 12 месяцев. Любое количество.',
        ky: '12 айдан кийин гана. Каалаган өлчөмдө.',
      ),
      benefits: [
        L3(en: 'Natural sweetener', ru: 'Натуральный подсластитель', ky: 'Табигый таттыткыч'),
        L3(en: 'Safe after 12 months', ru: 'Безопасен после 12 месяцев', ky: '12 айдан кийин коопсуз'),
      ],
      servingIdeas: [
        L3(en: 'Stir into yogurt', ru: 'Размешать в йогурте', ky: 'Йогуртка аралаштыруу'),
        L3(en: 'Drizzle on toast', ru: 'Полить на тост', ky: 'Нанга тамчылатуу'),
        L3(en: 'Mix into oatmeal', ru: 'Смешать с овсянкой', ky: 'Сулу жармага аралаштыруу'),
      ],
      avoidUntilNote: L3(
        en: 'NEVER before 12 months — infant botulism risk.',
        ru: 'НИКОГДА до 12 месяцев — риск ботулизма.',
        ky: '12 айга чейин ЭЧКАЧАН — ботулизм коркунучу.',
      ),
    ),
    BabyFood(
      id: 'strawberry',
      name: L3(en: 'Strawberry', ru: 'Клубника', ky: 'Кулпунай'),
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Cut into small pieces or mash.',
        ru: 'Нарезать мелкими кусочками или размять.',
        ky: 'Кичинекей кесектерге кесиңиз же жанчыңыз.',
      ),
      benefits: [
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Antioxidants', ru: 'Антиоксиданты', ky: 'Антиоксиданттар'),
      ],
      servingIdeas: [
        L3(en: 'Quartered ripe berries', ru: 'Спелые ягоды четвертинками', ky: 'Бышкан жемиштер төрткө бөлүнгөн'),
        L3(en: 'Mashed on toast', ru: 'Размять на тосте', ky: 'Нанга жанчуу'),
        L3(en: 'Mixed into yogurt', ru: 'Смешать с йогуртом', ky: 'Йогуртка аралаштыруу'),
      ],
      isChokingHazard: true,
      chokingNote: L3(
        en: 'Always cut into small pieces for babies under 12 months.',
        ru: 'Всегда нарезайте мелко для детей до 12 месяцев.',
        ky: '12 айга чейинки балдар үчүн дайыма майда кесиңиз.',
      ),
    ),
    BabyFood(
      id: 'citrus',
      name: L3(en: 'Oranges / Citrus', ru: 'Апельсины / Цитрусовые', ky: 'Апельсиндер / Цитрустар'),
      category: FoodCategory.fruits,
      minMonths: 9,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: L3(
        en: 'Remove seeds, peel, cut into small segments.',
        ru: 'Удалить семена, очистить, нарезать мелкими дольками.',
        ky: 'Данектерин алып, кабыгын аарчып, кичинекей бөлүктөргө кесиңиз.',
      ),
      benefits: [
        L3(en: 'Vitamin C', ru: 'Витамин С', ky: 'Витамин С'),
        L3(en: 'Fiber', ru: 'Клетчатка', ky: 'Клетчатка'),
        L3(en: 'Folate', ru: 'Фолиевая кислота', ky: 'Фолий кислотасы'),
      ],
      servingIdeas: [
        L3(en: 'Small peeled segments', ru: 'Маленькие очищенные дольки', ky: 'Кичинекей тазаланган бөлүктөр'),
        L3(en: 'Mashed into yogurt', ru: 'Размять в йогурте', ky: 'Йогуртка жанчуу'),
        L3(en: 'Small amount of fresh juice with food', ru: 'Немного свежего сока с едой', ky: 'Тамак менен аз сыгылган шире'),
      ],
    ),
  ];

  // ==========================================================
  // HELPERS
  // ==========================================================

  static List<BabyFood> forAge(int months) {
    return foods.where((f) => f.minMonths <= months).toList();
  }

  static List<BabyFood> byCategory(FoodCategory cat) {
    return foods.where((f) => f.category == cat).toList();
  }

  static List<BabyFood> allergens() {
    return foods.where((f) => f.isCommonAllergen).toList();
  }

  static List<BabyFood> chokingHazards() {
    return foods.where((f) => f.isChokingHazard).toList();
  }
}

// ==========================================================
// CHOKING HAZARDS REFERENCE
// ==========================================================
class ChokingHazardsInfo {
  ChokingHazardsInfo._();

  /// Foods to AVOID or prepare specially for babies under 4 years.
  static const hazards = <L3, L3>{
    L3(en: 'Whole grapes', ru: 'Целый виноград', ky: 'Бүтүн жүзүм'):
        L3(en: 'Cut lengthwise into quarters. Never whole or halved until 4+.', ru: 'Разрезать вдоль на четвертинки. Никогда целиком или пополам до 4+ лет.', ky: 'Узунунан төрткө бөлүңүз. 4+ жашка чейин бүтүн же жарым бербеңиз.'),
    L3(en: 'Whole nuts', ru: 'Целые орехи', ky: 'Бүтүн жаңгактар'):
        L3(en: 'No whole nuts until 4+. Nut butters (thinned) OK from 6m.', ru: 'Целые орехи не давать до 4+. Ореховые пасты (разбавленные) можно с 6м.', ky: 'Бүтүн жаңгактар 4+ жашка чейин жок. Жаңгак пасталары (суюлтулган) 6 айдан мүмкүн.'),
    L3(en: 'Popcorn', ru: 'Попкорн', ky: 'Попкорн'):
        L3(en: 'No popcorn until 4+.', ru: 'Попкорн не давать до 4+.', ky: 'Попкорн 4+ жашка чейин жок.'),
    L3(en: 'Hot dogs / sausages', ru: 'Сосиски / колбаски', ky: 'Сосискалар / колбаскалар'):
        L3(en: 'Cut lengthwise in strips, not circles. Age 4+ for regular shape.', ru: 'Нарезать вдоль полосками, не кружочками. Обычная форма с 4+ лет.', ky: 'Тегерек эмес, узунунан тилкелерге кесиңиз. 4+ жаштан кадимки форма.'),
    L3(en: 'Hard raw vegetables', ru: 'Жёсткие сырые овощи', ky: 'Катуу чийки жашылчалар'):
        L3(en: 'Raw carrots, celery — cook until soft until 4+.', ru: 'Сырая морковь, сельдерей — готовить до мягкости до 4+ лет.', ky: 'Чийки сабиз, сельдерей — 4+ жашка чейин жумшак болгонго чейин бышырыңыз.'),
    L3(en: 'Chunks of cheese', ru: 'Куски сыра', ky: 'Сыр кесектери'):
        L3(en: 'Cut small, not cube-shaped.', ru: 'Нарезать мелко, не кубиками.', ky: 'Кубик формасында эмес, майда кесиңиз.'),
    L3(en: 'Peanut butter on a spoon', ru: 'Арахисовая паста на ложке', ky: 'Кашыктагы жержаңгак майы'):
        L3(en: 'Thin with breast milk/water or spread thin on bread.', ru: 'Разбавить грудным молоком/водой или тонко намазать на хлеб.', ky: 'Эне сүтү/суу менен суюлтуңуз же нанга жука сүртүңүз.'),
    L3(en: 'Hard candy', ru: 'Леденцы', ky: 'Катуу конфеттер'):
        L3(en: 'Never before 4+.', ru: 'Никогда до 4+ лет.', ky: '4+ жашка чейин эчкачан.'),
    L3(en: 'Marshmallows', ru: 'Зефир / маршмэллоу', ky: 'Маршмэллоу'):
        L3(en: 'Sticky = choking risk. Avoid until 4+.', ru: 'Липкий = риск удушья. Избегать до 4+.', ky: 'Жабышчаак = тумчугу коркунучу. 4+ жашка чейин алыс болуңуз.'),
    L3(en: 'Chewing gum', ru: 'Жевательная резинка', ky: 'Сагыз'):
        L3(en: 'Never for young children.', ru: 'Никогда для маленьких детей.', ky: 'Кичинекей балдарга эчкачан.'),
    L3(en: 'Whole berries', ru: 'Целые ягоды', ky: 'Бүтүн жемиштер'):
        L3(en: 'Cut blueberries, grapes, strawberries into quarters until 12m.', ru: 'Нарезать чернику, виноград, клубнику четвертинками до 12м.', ky: 'Чернику, жүзүм, кулпунайды 12 айга чейин төрткө бөлүңүз.'),
    L3(en: 'Apple chunks (raw)', ru: 'Куски яблока (сырые)', ky: 'Алма кесектери (чийки)'):
        L3(en: 'Grate raw or cook until soft until 3+.', ru: 'Натереть сырое или готовить до мягкости до 3+.', ky: 'Чийки үгүңүз же 3+ жашка чейин жумшак болгонго чейин бышырыңыз.'),
    L3(en: 'Fish bones', ru: 'Рыбные кости', ky: 'Балык сөөктөрү'):
        L3(en: 'Always remove before serving.', ru: 'Всегда удалять перед подачей.', ky: 'Берер алдында дайыма алып салыңыз.'),
  };

  static const safetyTips = <L3>[
    L3(en: 'Always supervise baby while eating — no phone, no TV', ru: 'Всегда присматривайте за ребёнком во время еды — без телефона, без ТВ', ky: 'Тамактанууда баланы дайыма көзөмөлдөңүз — телефонсуз, ТВсиз'),
    L3(en: 'Baby must sit upright, not reclining', ru: 'Ребёнок должен сидеть прямо, не откидываясь', ky: 'Бала түз отурушу керек, жатпастан'),
    L3(en: 'Cut round foods lengthwise, never into circles', ru: 'Круглую еду резать вдоль, никогда кружочками', ky: 'Тегерек тамакты узунунан кесиңиз, тегерек кылбаңыз'),
    L3(en: 'Soft foods should squish between your fingers', ru: 'Мягкая еда должна давиться между пальцами', ky: 'Жумшак тамак манжалар арасында жанчылышы керек'),
    L3(en: 'Learn infant CPR — every parent should', ru: 'Выучите детский СЛР — каждый родитель должен', ky: 'Балдар ЖКР үйрөнүңүз — ар бир ата-эне билиши керек'),
    L3(en: "If baby is quiet and can't breathe: choking (not just gagging)", ru: 'Если ребёнок молчит и не может дышать: удушье (не просто рвотный рефлекс)', ky: 'Бала унчукпай, дем ала албаса: тумчугуу (жөн эле кусуу эмес)'),
    L3(en: "Gagging with sound = baby is handling it. Don't intervene.", ru: 'Рвотный рефлекс со звуком = ребёнок справляется. Не вмешивайтесь.', ky: 'Үн менен кусуу рефлекси = бала өзү жеңип жатат. Кийлигишпеңиз.'),
  ];
}

// ==========================================================
// MEAL IDEAS BY AGE
// ==========================================================
class MealIdea {
  final L3 name;
  final L3 description;
  final int minMonths;
  final String mealType; // breakfast, lunch, dinner, snack

  const MealIdea({
    required this.name,
    required this.description,
    required this.minMonths,
    required this.mealType,
  });
}

class MealIdeasData {
  MealIdeasData._();

  static const meals = <MealIdea>[
    // 6-8 MONTHS
    MealIdea(
      name: L3(en: 'Oatmeal + Banana', ru: 'Овсянка + Банан', ky: 'Сулу жарма + Банан'),
      description: L3(en: 'Iron-fortified oatmeal mixed with mashed banana', ru: 'Овсянка с железом, смешанная с размятым бананом', ky: 'Темир кошулган сулу жарма жанчылган банан менен'),
      minMonths: 6,
      mealType: 'breakfast',
    ),
    MealIdea(
      name: L3(en: 'Avocado Puree', ru: 'Пюре из авокадо', ky: 'Авокадо пюреси'),
      description: L3(en: 'Ripe avocado mashed with breast milk or formula', ru: 'Спелое авокадо, размятое с грудным молоком или смесью', ky: 'Бышкан авокадо эне сүтү же смесь менен жанчылган'),
      minMonths: 6,
      mealType: 'snack',
    ),
    MealIdea(
      name: L3(en: 'Sweet Potato + Chicken', ru: 'Батат + Курица', ky: 'Таттуу картошка + Тоок'),
      description: L3(en: 'Roasted sweet potato mashed with shredded chicken', ru: 'Запечённый батат с измельчённой курицей', ky: 'Бышырылган таттуу картошка майдаланган тоок менен'),
      minMonths: 6,
      mealType: 'lunch',
    ),
    MealIdea(
      name: L3(en: 'Lentil + Carrot Puree', ru: 'Чечевица + Морковное пюре', ky: 'Буурчак + Сабиз пюреси'),
      description: L3(en: 'Red lentils and carrot cooked soft and pureed', ru: 'Красная чечевица и морковь, сваренные до мягкости и пюрированные', ky: 'Кызыл буурчак жана сабиз жумшак бышырылып пюреленген'),
      minMonths: 6,
      mealType: 'dinner',
    ),
    MealIdea(
      name: L3(en: 'Scrambled Egg', ru: 'Яичница-болтунья', ky: 'Чыланган жумуртка'),
      description: L3(en: 'Well-cooked scrambled egg with a splash of breast milk', ru: 'Хорошо приготовленная яичница с каплей грудного молока', ky: 'Жакшы бышырылган жумуртка эне сүтү менен'),
      minMonths: 6,
      mealType: 'breakfast',
    ),

    // 9-12 MONTHS
    MealIdea(
      name: L3(en: 'Toast + Avocado', ru: 'Тост + Авокадо', ky: 'Нан + Авокадо'),
      description: L3(en: 'Soft toast strips topped with mashed avocado', ru: 'Мягкие полоски тоста с размятым авокадо', ky: 'Жумшак нан тилкелери жанчылган авокадо менен'),
      minMonths: 9,
      mealType: 'breakfast',
    ),
    MealIdea(
      name: L3(en: 'Mini Meatballs + Pasta', ru: 'Мини тефтели + Макароны', ky: 'Мини тефтелдер + Макарон'),
      description: L3(en: 'Small soft meatballs with pastina and tomato sauce', ru: 'Маленькие мягкие тефтели с пастиной и томатным соусом', ky: 'Кичинекей жумшак тефтелдер пастина жана помидор соусу менен'),
      minMonths: 9,
      mealType: 'dinner',
    ),
    MealIdea(
      name: L3(en: 'Yogurt + Smashed Berries', ru: 'Йогурт + Размятые ягоды', ky: 'Йогурт + Жанчылган жемиштер'),
      description: L3(en: 'Plain whole-milk yogurt with smashed blueberries', ru: 'Натуральный цельный йогурт с раздавленной черникой', ky: 'Жөнөкөй толук майлуу йогурт жанчылган черника менен'),
      minMonths: 6,
      mealType: 'snack',
    ),
    MealIdea(
      name: L3(en: 'Cheese + Soft Bread', ru: 'Сыр + Мягкий хлеб', ky: 'Сыр + Жумшак нан'),
      description: L3(en: 'Shredded mild cheese on soft whole wheat bread', ru: 'Тёртый мягкий сыр на цельнозерновом хлебе', ky: 'Үгүлгөн жумшак сыр дан нанда'),
      minMonths: 9,
      mealType: 'lunch',
    ),
    MealIdea(
      name: L3(en: 'Hummus + Cucumber', ru: 'Хумус + Огурец', ky: 'Хумус + Бадыраң'),
      description: L3(en: 'Hummus on toast with soft steamed cucumber strips', ru: 'Хумус на тосте с мягкими полосками огурца на пару', ky: 'Нандагы хумус буулаган жумшак бадыраң тилкелери менен'),
      minMonths: 9,
      mealType: 'lunch',
    ),
    MealIdea(
      name: L3(en: 'Rice + Beans', ru: 'Рис + Фасоль', ky: 'Күрүч + Буурчак'),
      description: L3(en: 'Soft rice with mashed black beans', ru: 'Мягкий рис с размятой чёрной фасолью', ky: 'Жумшак күрүч жанчылган кара буурчак менен'),
      minMonths: 9,
      mealType: 'dinner',
    ),

    // 12+ MONTHS
    MealIdea(
      name: L3(en: 'Pancakes + Berries', ru: 'Блинчики + Ягоды', ky: 'Куймак + Жемиштер'),
      description: L3(en: 'Mini whole-grain pancakes with fresh berries', ru: 'Мини цельнозерновые блинчики со свежими ягодами', ky: 'Жаңы жемиштер менен мини дан куймактар'),
      minMonths: 12,
      mealType: 'breakfast',
    ),
    MealIdea(
      name: L3(en: 'Chicken Quesadilla', ru: 'Куриная кесадилья', ky: 'Тоок кесадильясы'),
      description: L3(en: 'Soft tortilla with shredded chicken and cheese, cut small', ru: 'Мягкая тортилья с курицей и сыром, мелко нарезать', ky: 'Жумшак тортилья майдаланган тоок жана сыр менен, майда кесилген'),
      minMonths: 12,
      mealType: 'lunch',
    ),
    MealIdea(
      name: L3(en: 'Salmon + Rice + Vegetables', ru: 'Лосось + Рис + Овощи', ky: 'Лосось + Күрүч + Жашылчалар'),
      description: L3(en: 'Flaked salmon with rice and steamed vegetables', ru: 'Лосось хлопьями с рисом и овощами на пару', ky: 'Бөлүнгөн лосось күрүч жана буулаган жашылчалар менен'),
      minMonths: 12,
      mealType: 'dinner',
    ),
    MealIdea(
      name: L3(en: 'Whole Milk + Crackers', ru: 'Молоко + Крекеры', ky: 'Сүт + Крекерлер'),
      description: L3(en: 'Whole milk in a cup with whole-grain crackers', ru: 'Цельное молоко в чашке с цельнозерновыми крекерами', ky: 'Кеседе толук сүт дан крекерлер менен'),
      minMonths: 12,
      mealType: 'snack',
    ),
    MealIdea(
      name: L3(en: 'Pasta + Tomato Sauce + Ground Turkey', ru: 'Макароны + Томатный соус + Фарш из индейки', ky: 'Макарон + Помидор соусу + Күрчүт фаршы'),
      description: L3(en: 'Small pasta with tomato sauce and ground turkey', ru: 'Мелкие макароны с томатным соусом и фаршем из индейки', ky: 'Кичинекей макарон помидор соусу жана күрчүт фаршы менен'),
      minMonths: 12,
      mealType: 'dinner',
    ),
    MealIdea(
      name: L3(en: 'Banana Pancake (2 ingredients)', ru: 'Банановый блинчик (2 ингредиента)', ky: 'Банан куймагы (2 ингредиент)'),
      description: L3(en: '1 mashed banana + 1 egg, cooked like a pancake', ru: '1 размятый банан + 1 яйцо, приготовить как блинчик', ky: '1 жанчылган банан + 1 жумуртка, куймак сыяктуу бышыруу'),
      minMonths: 9,
      mealType: 'breakfast',
    ),
  ];

  static List<MealIdea> forAge(int months, {String? mealType}) {
    var result = meals.where((m) => m.minMonths <= months).toList();
    if (mealType != null) {
      result = result.where((m) => m.mealType == mealType).toList();
    }
    return result;
  }
}
