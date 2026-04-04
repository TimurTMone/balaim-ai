import 'package:flutter/material.dart';

/// Comprehensive baby food introduction guide — AAP/WHO aligned.
/// Helps parents safely introduce solids from 6 months to 2 years.

enum FoodCategory {
  fruits('Fruits', Icons.apple, Color(0xFFE8787A)),
  vegetables('Vegetables', Icons.eco, Color(0xFF66BB6A)),
  grains('Grains', Icons.grain, Color(0xFFF5C15A)),
  protein('Protein', Icons.egg, Color(0xFF8D6E63)),
  dairy('Dairy', Icons.icecream, Color(0xFF4FC3F7)),
  fats('Healthy Fats', Icons.water_drop, Color(0xFFAED581)),
  allergen('Allergens', Icons.warning_amber, Color(0xFFEF5350));

  const FoodCategory(this.label, this.icon, this.color);
  final String label;
  final IconData icon;
  final Color color;
}

enum FoodTexture {
  puree('Smooth purée', '6 months'),
  mashed('Mashed / lumpy', '7-8 months'),
  soft('Soft finger foods', '8-10 months'),
  chopped('Chopped small', '10-12 months'),
  familyFoods('Family foods (cut small)', '12+ months');

  const FoodTexture(this.label, this.ageGuide);
  final String label;
  final String ageGuide;
}

class BabyFood {
  final String id;
  final String name;
  final FoodCategory category;
  final int minMonths;
  final List<FoodTexture> textures;
  final String preparation;
  final List<String> benefits;
  final List<String> servingIdeas;
  final bool isCommonAllergen;
  final bool isChokingHazard;
  final String? chokingNote;
  final String? avoidUntilNote;

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
      name: 'Avocado',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Ripe avocado, mashed with fork. No cooking needed.',
      benefits: ['Healthy fats for brain', 'Fiber', 'Potassium', 'Vitamin E'],
      servingIdeas: [
        'Mashed with breast milk or formula',
        'Sliced strips (8m+ for baby-led weaning)',
        'Mashed with banana',
      ],
    ),
    BabyFood(
      id: 'banana',
      name: 'Banana',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft, FoodTexture.chopped],
      preparation: 'Ripe banana, mashed or halved lengthwise for baby-led weaning.',
      benefits: ['Potassium', 'Natural sweetness', 'Easy to digest', 'Fiber'],
      servingIdeas: [
        'Mashed alone or with avocado',
        'Half banana (peel on bottom half for grip)',
        'Frozen banana on a silicone teether',
      ],
    ),
    BabyFood(
      id: 'sweet-potato',
      name: 'Sweet Potato',
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Bake or steam until very soft. Mash or cut into spears.',
      benefits: ['Vitamin A', 'Fiber', 'Beta-carotene', 'Natural sweetness'],
      servingIdeas: [
        'Mashed with breast milk',
        'Roasted spears',
        'Mixed with cinnamon (no sugar)',
      ],
    ),
    BabyFood(
      id: 'butternut-squash',
      name: 'Butternut Squash',
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Roast or steam until soft. Remove skin, mash or purée.',
      benefits: ['Vitamin A', 'Vitamin C', 'Fiber'],
      servingIdeas: [
        'Puréed smooth',
        'Mixed with cinnamon or nutmeg',
        'Soft roasted cubes',
      ],
    ),
    BabyFood(
      id: 'oatmeal',
      name: 'Iron-Fortified Oatmeal',
      category: FoodCategory.grains,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: 'Mix iron-fortified infant oatmeal with breast milk or formula.',
      benefits: ['Iron (crucial after 6 months)', 'Fiber', 'B vitamins'],
      servingIdeas: [
        'Thin with breast milk for first feeds',
        'Add mashed banana',
        'Mix with puréed fruit',
      ],
    ),
    BabyFood(
      id: 'iron-rice-cereal',
      name: 'Iron-Fortified Rice Cereal',
      category: FoodCategory.grains,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: 'Mix with breast milk, formula, or water.',
      benefits: ['Iron', 'Gentle on tummy', 'Easy to thicken other foods'],
      servingIdeas: [
        'As first food mixed with milk',
        'Mix in fruit purée',
        'Alternate with oatmeal for variety',
      ],
    ),
    BabyFood(
      id: 'chicken-puree',
      name: 'Chicken',
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.soft, FoodTexture.chopped],
      preparation: 'Cook thoroughly, purée with broth or breast milk, or shred soft pieces.',
      benefits: ['Iron', 'Zinc', 'Protein', 'B vitamins'],
      servingIdeas: [
        'Puréed with sweet potato',
        'Shredded over rice',
        'Soft-cooked strips (baby-led weaning)',
      ],
    ),
    BabyFood(
      id: 'lentils',
      name: 'Lentils',
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Cook until very soft, mash or purée. No salt.',
      benefits: ['Iron', 'Protein', 'Fiber', 'Folate'],
      servingIdeas: [
        'Mashed red lentils with cumin',
        'Lentil purée with vegetables',
        'Soft-cooked green lentils',
      ],
    ),

    // ==========================================================
    // ALLERGENS — INTRODUCE EARLY (4-6 months per AAP)
    // ==========================================================
    BabyFood(
      id: 'peanut',
      name: 'Peanut (smooth)',
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: 'Mix 1-2 teaspoons smooth peanut butter into purée or mix with warm water to thin.',
      benefits: ['Early introduction reduces allergy risk by up to 80%', 'Protein', 'Healthy fats'],
      servingIdeas: [
        'Thin peanut butter with breast milk',
        'Stir into oatmeal',
        'Mix with banana',
      ],
      isCommonAllergen: true,
      isChokingHazard: true,
      chokingNote: 'NEVER give whole peanuts or chunks of peanut butter on a spoon before age 4.',
    ),
    BabyFood(
      id: 'egg',
      name: 'Egg',
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Fully cooked. Scramble, hard-boil, or make omelette strips.',
      benefits: ['Choline for brain', 'Protein', 'Iron', 'Vitamin D'],
      servingIdeas: [
        'Scrambled with a splash of breast milk',
        'Hard-boiled yolk mashed with avocado',
        'Omelette strips for baby-led weaning',
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'yogurt',
      name: 'Whole-Milk Yogurt',
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed],
      preparation: 'Plain whole-milk yogurt only. No added sugar or flavors.',
      benefits: ['Calcium', 'Probiotics', 'Protein', 'Vitamin D'],
      servingIdeas: [
        'Plain as a snack',
        'Mixed with mashed fruit',
        'Swirled with puréed vegetables',
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'salmon',
      name: 'Salmon',
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Cook fully. Remove all bones. Flake apart or purée.',
      benefits: ['Omega-3 (DHA) for brain', 'Protein', 'Vitamin D'],
      servingIdeas: [
        'Flaked on top of rice',
        'Mixed with sweet potato purée',
        'Small baked patty',
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'wheat',
      name: 'Wheat',
      category: FoodCategory.allergen,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Introduce via iron-fortified cereal, soft bread, or pasta.',
      benefits: ['Iron (fortified)', 'B vitamins', 'Fiber'],
      servingIdeas: [
        'Infant wheat cereal',
        'Small pasta pieces (after 9m)',
        'Toast strips (after 9m)',
      ],
      isCommonAllergen: true,
    ),

    // ==========================================================
    // 7-8 MONTHS — EXPANDING VARIETY
    // ==========================================================
    BabyFood(
      id: 'apple',
      name: 'Apple',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Steam or bake until very soft. Peel, core, mash.',
      benefits: ['Vitamin C', 'Fiber', 'Antioxidants'],
      servingIdeas: [
        'Homemade applesauce',
        'Baked apple slices',
        'Puréed with cinnamon',
      ],
      isChokingHazard: true,
      chokingNote: 'Raw apple is a choking hazard until 3+ years. Always cook or grate finely.',
    ),
    BabyFood(
      id: 'pear',
      name: 'Pear',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Ripe pear, steam or serve ripe. Peel and mash.',
      benefits: ['Fiber (helps with constipation)', 'Vitamin C', 'Gentle'],
      servingIdeas: [
        'Ripe mashed pear',
        'Poached pear slices',
        'Mixed with oatmeal',
      ],
    ),
    BabyFood(
      id: 'peach',
      name: 'Peach',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Ripe peach, peeled, pitted, mashed. Stew if not very soft.',
      benefits: ['Vitamin C', 'Vitamin A', 'Fiber'],
      servingIdeas: [
        'Mashed ripe peach',
        'Stewed slices',
        'Mixed with yogurt',
      ],
    ),
    BabyFood(
      id: 'blueberries',
      name: 'Blueberries',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Smash each berry between fingers, or cut in half/quarters.',
      benefits: ['Antioxidants', 'Vitamin C', 'Fiber'],
      servingIdeas: [
        'Smashed into yogurt',
        'Halved and served on high chair',
        'Thawed frozen blueberries',
      ],
      isChokingHazard: true,
      chokingNote: 'Always smash or quarter for babies under 12m.',
    ),
    BabyFood(
      id: 'broccoli',
      name: 'Broccoli',
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Steam until very soft. Purée or serve as florets.',
      benefits: ['Vitamin C', 'Calcium', 'Fiber', 'Iron'],
      servingIdeas: [
        'Steamed florets (baby-led weaning)',
        'Puréed with garlic',
        'Mixed with rice',
      ],
    ),
    BabyFood(
      id: 'carrot',
      name: 'Carrot',
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Steam or roast until very soft. Purée or serve soft spears.',
      benefits: ['Beta-carotene', 'Vitamin A', 'Fiber'],
      servingIdeas: [
        'Puréed smooth',
        'Soft-roasted spears',
        'Mashed with cumin',
      ],
      isChokingHazard: true,
      chokingNote: 'Raw carrots are a choking hazard until 4+ years.',
    ),
    BabyFood(
      id: 'peas',
      name: 'Peas',
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Cook fully. Mash or smash each pea.',
      benefits: ['Protein', 'Fiber', 'Iron', 'Vitamin C'],
      servingIdeas: [
        'Puréed with mint',
        'Smashed as finger food',
        'Mixed with mashed potato',
      ],
    ),
    BabyFood(
      id: 'spinach',
      name: 'Spinach',
      category: FoodCategory.vegetables,
      minMonths: 6,
      textures: [FoodTexture.puree],
      preparation: 'Cook fully, purée smooth. High in iron.',
      benefits: ['Iron', 'Folate', 'Vitamin K', 'Calcium'],
      servingIdeas: [
        'Puréed with apple',
        'Mixed into oatmeal',
        'Blended into soft eggs',
      ],
    ),
    BabyFood(
      id: 'beef',
      name: 'Beef',
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.puree, FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Cook fully. Purée or shred into very small pieces.',
      benefits: ['Iron', 'Zinc', 'Protein', 'B12'],
      servingIdeas: [
        'Puréed with carrots',
        'Shredded over rice',
        'Soft meatballs (cut small)',
      ],
    ),
    BabyFood(
      id: 'black-beans',
      name: 'Black Beans',
      category: FoodCategory.protein,
      minMonths: 7,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Cook fully, mash. Rinse canned beans to reduce sodium.',
      benefits: ['Plant protein', 'Fiber', 'Iron', 'Folate'],
      servingIdeas: [
        'Mashed with avocado',
        'Mixed with rice',
        'Smashed as finger food',
      ],
    ),
    BabyFood(
      id: 'tofu',
      name: 'Tofu',
      category: FoodCategory.protein,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Use soft or silken tofu. Cube or mash.',
      benefits: ['Plant protein', 'Iron', 'Calcium'],
      servingIdeas: [
        'Soft cubes on high chair',
        'Mashed with vegetables',
        'Crumbled into soft scramble',
      ],
      isCommonAllergen: true,
    ),
    BabyFood(
      id: 'cottage-cheese',
      name: 'Cottage Cheese',
      category: FoodCategory.dairy,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Use whole-milk, full-fat. Small curds or mashed.',
      benefits: ['Calcium', 'Protein', 'Vitamin B12'],
      servingIdeas: [
        'Plain as finger food',
        'Mixed with fruit',
        'Stirred into pasta',
      ],
      isCommonAllergen: true,
    ),

    // ==========================================================
    // 9-12 MONTHS — FINGER FOODS & TEXTURES
    // ==========================================================
    BabyFood(
      id: 'pasta',
      name: 'Pasta',
      category: FoodCategory.grains,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: 'Cook until soft (slightly overcooked). Small shapes best.',
      benefits: ['Iron (fortified)', 'Energy', 'Easy to chew'],
      servingIdeas: [
        'Pastina with butter',
        'Small shells with tomato sauce',
        'Orzo with vegetables',
      ],
    ),
    BabyFood(
      id: 'bread',
      name: 'Bread',
      category: FoodCategory.grains,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: 'Soft whole-grain bread. Cut into strips or small pieces.',
      benefits: ['Iron (whole grain)', 'Fiber', 'Practice chewing'],
      servingIdeas: [
        'Toast strips with avocado',
        'Soft whole wheat squares',
        'Mini sandwiches cut small',
      ],
      isCommonAllergen: true,
      avoidUntilNote: 'Avoid honey until 12 months.',
    ),
    BabyFood(
      id: 'quinoa',
      name: 'Quinoa',
      category: FoodCategory.grains,
      minMonths: 8,
      textures: [FoodTexture.soft],
      preparation: 'Cook until soft and fluffy. Complete protein.',
      benefits: ['Complete protein', 'Iron', 'Magnesium', 'Fiber'],
      servingIdeas: [
        'Mixed with vegetables',
        'With shredded chicken',
        'Warm breakfast bowl',
      ],
    ),
    BabyFood(
      id: 'cheese-cubes',
      name: 'Cheese (soft)',
      category: FoodCategory.dairy,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: 'Soft pasteurized cheeses. Small cubes or shreds.',
      benefits: ['Calcium', 'Protein', 'Fat for brain'],
      servingIdeas: [
        'Mozzarella cubes',
        'Shredded mild cheddar',
        'String cheese torn into strips',
      ],
      isCommonAllergen: true,
      avoidUntilNote: 'Avoid unpasteurized cheeses until 2+.',
    ),
    BabyFood(
      id: 'meatballs',
      name: 'Meatballs',
      category: FoodCategory.protein,
      minMonths: 9,
      textures: [FoodTexture.soft, FoodTexture.chopped],
      preparation: 'Soft mini meatballs. Cut in half for safety.',
      benefits: ['Iron', 'Protein', 'Zinc'],
      servingIdeas: [
        'Soft beef meatballs',
        'Chicken meatballs with veggies',
        'Turkey meatballs cut small',
      ],
    ),
    BabyFood(
      id: 'hummus',
      name: 'Hummus',
      category: FoodCategory.protein,
      minMonths: 8,
      textures: [FoodTexture.puree],
      preparation: 'Plain hummus (watch sesame/tahini for allergy).',
      benefits: ['Protein', 'Iron', 'Healthy fats'],
      servingIdeas: [
        'On toast strips',
        'Dipping sauce for soft veggies',
        'Mixed into mashed vegetables',
      ],
      isCommonAllergen: true,
    ),

    // ==========================================================
    // 12+ MONTHS — FAMILY FOODS
    // ==========================================================
    BabyFood(
      id: 'cow-milk',
      name: 'Whole Cow\'s Milk',
      category: FoodCategory.dairy,
      minMonths: 12,
      textures: [],
      preparation: 'As a drink with meals. Max 480ml/day.',
      benefits: ['Calcium', 'Vitamin D', 'Protein', 'Fat'],
      servingIdeas: [
        'In a sippy cup with meals',
        'Avoid as a bottle at bedtime',
        'Limit to 480ml/day (blocks iron absorption)',
      ],
      isCommonAllergen: true,
      avoidUntilNote: 'NEVER give cow\'s milk as a main drink before 12 months.',
    ),
    BabyFood(
      id: 'honey',
      name: 'Honey',
      category: FoodCategory.grains,
      minMonths: 12,
      textures: [],
      preparation: 'Only after 12 months. Any amount.',
      benefits: ['Natural sweetener', 'Safe after 12 months'],
      servingIdeas: [
        'Stir into yogurt',
        'Drizzle on toast',
        'Mix into oatmeal',
      ],
      avoidUntilNote: 'NEVER before 12 months — infant botulism risk.',
    ),
    BabyFood(
      id: 'strawberry',
      name: 'Strawberry',
      category: FoodCategory.fruits,
      minMonths: 6,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Cut into small pieces or mash.',
      benefits: ['Vitamin C', 'Fiber', 'Antioxidants'],
      servingIdeas: [
        'Quartered ripe berries',
        'Mashed on toast',
        'Mixed into yogurt',
      ],
      isChokingHazard: true,
      chokingNote: 'Always cut into small pieces for babies under 12 months.',
    ),
    BabyFood(
      id: 'citrus',
      name: 'Oranges / Citrus',
      category: FoodCategory.fruits,
      minMonths: 9,
      textures: [FoodTexture.mashed, FoodTexture.soft],
      preparation: 'Remove seeds, peel, cut into small segments.',
      benefits: ['Vitamin C', 'Fiber', 'Folate'],
      servingIdeas: [
        'Small peeled segments',
        'Mashed into yogurt',
        'Small amount of fresh juice with food',
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
  static const hazards = <String, String>{
    'Whole grapes':
        'Cut lengthwise into quarters. Never whole or halved until 4+.',
    'Whole nuts':
        'No whole nuts until 4+. Nut butters (thinned) OK from 6m.',
    'Popcorn': 'No popcorn until 4+.',
    'Hot dogs / sausages':
        'Cut lengthwise in strips, not circles. Age 4+ for regular shape.',
    'Hard raw vegetables':
        'Raw carrots, celery — cook until soft until 4+.',
    'Chunks of cheese': 'Cut small, not cube-shaped.',
    'Peanut butter on a spoon':
        'Thin with breast milk/water or spread thin on bread.',
    'Hard candy': 'Never before 4+.',
    'Marshmallows': 'Sticky = choking risk. Avoid until 4+.',
    'Chewing gum': 'Never for young children.',
    'Whole berries':
        'Cut blueberries, grapes, strawberries into quarters until 12m.',
    'Apple chunks (raw)': 'Grate raw or cook until soft until 3+.',
    'Fish bones': 'Always remove before serving.',
  };

  static const safetyTips = <String>[
    'Always supervise baby while eating — no phone, no TV',
    'Baby must sit upright, not reclining',
    'Cut round foods lengthwise, never into circles',
    'Soft foods should squish between your fingers',
    'Learn infant CPR — every parent should',
    'If baby is quiet and can\'t breathe: choking (not just gagging)',
    'Gagging with sound = baby is handling it. Don\'t intervene.',
  ];
}

// ==========================================================
// MEAL IDEAS BY AGE
// ==========================================================
class MealIdea {
  final String name;
  final String description;
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
      name: 'Oatmeal + Banana',
      description: 'Iron-fortified oatmeal mixed with mashed banana',
      minMonths: 6,
      mealType: 'breakfast',
    ),
    MealIdea(
      name: 'Avocado Purée',
      description: 'Ripe avocado mashed with breast milk or formula',
      minMonths: 6,
      mealType: 'snack',
    ),
    MealIdea(
      name: 'Sweet Potato + Chicken',
      description: 'Roasted sweet potato mashed with shredded chicken',
      minMonths: 6,
      mealType: 'lunch',
    ),
    MealIdea(
      name: 'Lentil + Carrot Purée',
      description: 'Red lentils and carrot cooked soft and puréed',
      minMonths: 6,
      mealType: 'dinner',
    ),
    MealIdea(
      name: 'Scrambled Egg',
      description: 'Well-cooked scrambled egg with a splash of breast milk',
      minMonths: 6,
      mealType: 'breakfast',
    ),

    // 9-12 MONTHS
    MealIdea(
      name: 'Toast + Avocado',
      description: 'Soft toast strips topped with mashed avocado',
      minMonths: 9,
      mealType: 'breakfast',
    ),
    MealIdea(
      name: 'Mini Meatballs + Pasta',
      description: 'Small soft meatballs with pastina and tomato sauce',
      minMonths: 9,
      mealType: 'dinner',
    ),
    MealIdea(
      name: 'Yogurt + Smashed Berries',
      description: 'Plain whole-milk yogurt with smashed blueberries',
      minMonths: 6,
      mealType: 'snack',
    ),
    MealIdea(
      name: 'Cheese + Soft Bread',
      description: 'Shredded mild cheese on soft whole wheat bread',
      minMonths: 9,
      mealType: 'lunch',
    ),
    MealIdea(
      name: 'Hummus + Cucumber',
      description: 'Hummus on toast with soft steamed cucumber strips',
      minMonths: 9,
      mealType: 'lunch',
    ),
    MealIdea(
      name: 'Rice + Beans',
      description: 'Soft rice with mashed black beans',
      minMonths: 9,
      mealType: 'dinner',
    ),

    // 12+ MONTHS
    MealIdea(
      name: 'Pancakes + Berries',
      description: 'Mini whole-grain pancakes with fresh berries',
      minMonths: 12,
      mealType: 'breakfast',
    ),
    MealIdea(
      name: 'Chicken Quesadilla',
      description: 'Soft tortilla with shredded chicken and cheese, cut small',
      minMonths: 12,
      mealType: 'lunch',
    ),
    MealIdea(
      name: 'Salmon + Rice + Vegetables',
      description: 'Flaked salmon with rice and steamed vegetables',
      minMonths: 12,
      mealType: 'dinner',
    ),
    MealIdea(
      name: 'Whole Milk + Crackers',
      description: 'Whole milk in a cup with whole-grain crackers',
      minMonths: 12,
      mealType: 'snack',
    ),
    MealIdea(
      name: 'Pasta + Tomato Sauce + Ground Turkey',
      description: 'Small pasta with tomato sauce and ground turkey',
      minMonths: 12,
      mealType: 'dinner',
    ),
    MealIdea(
      name: 'Banana Pancake (2 ingredients)',
      description: '1 mashed banana + 1 egg, cooked like a pancake',
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
