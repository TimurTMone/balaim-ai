import 'package:flutter/material.dart';

/// Trimester-specific guidance that complements the week-by-week data.
/// Three content types: Nutrition, Exercise, Partner Tips.
enum Trimester {
  first('First', 1, 13),
  second('Second', 14, 27),
  third('Third', 28, 42);

  const Trimester(this.label, this.startWeek, this.endWeek);
  final String label;
  final int startWeek;
  final int endWeek;

  static Trimester fromWeek(int week) {
    if (week <= 13) return Trimester.first;
    if (week <= 27) return Trimester.second;
    return Trimester.third;
  }
}

class TrimesterGuide {
  final String title;
  final IconData icon;
  final Color color;
  final String intro;
  final List<String> dos;
  final List<String> donts;

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
      title: 'Nutrition — First Trimester',
      icon: Icons.restaurant,
      color: Color(0xFFE8787A),
      intro:
          'Nausea may dominate. Focus on calories that stay down, not perfect nutrition. '
          'You need only ~100-150 extra calories per day in trimester 1.',
      dos: [
        'Take prenatal vitamins with folic acid (400-800 mcg)',
        'Eat small, frequent meals every 2-3 hours',
        'Ginger tea, ginger candies, vitamin B6 for nausea',
        'Dry crackers before getting out of bed',
        'Protein at every meal (eggs, yogurt, lentils)',
        'Stay hydrated — water, broth, popsicles, ice chips',
        'Folate-rich foods: leafy greens, citrus, beans',
      ],
      donts: [
        'Alcohol — any amount',
        'Raw fish, raw eggs, unpasteurized dairy',
        'High-mercury fish (shark, swordfish, king mackerel)',
        'Deli meats unless heated to steaming',
        'Raw sprouts, unwashed produce',
        'More than 200mg caffeine per day (~1 coffee)',
        'Herbal teas unless cleared by your doctor',
      ],
    ),
    Trimester.second: TrimesterGuide(
      title: 'Nutrition — Second Trimester',
      icon: Icons.restaurant,
      color: Color(0xFF5BBCB4),
      intro:
          'Appetite returns, nausea often fades. Add ~340 extra calories per day. '
          'Focus on iron, calcium, and protein for baby\'s rapid growth.',
      dos: [
        'Iron-rich foods daily: red meat, lentils, spinach, dried fruit',
        'Pair iron with vitamin C for absorption (orange juice, bell peppers)',
        'Calcium 1000mg/day: dairy, fortified plant milks, tofu, sardines',
        'Omega-3s: salmon (2x/week), walnuts, chia seeds, flax',
        'Whole grains for sustained energy',
        'Protein: 75-100g daily',
        'Fiber to combat constipation (25-30g/day)',
      ],
      donts: [
        'Processed foods and excess sugar (gestational diabetes risk)',
        'Unpasteurized cheeses (brie, feta, blue)',
        'Raw or undercooked meat, poultry, seafood',
        'Fish high in mercury',
        'Excessive vitamin A (liver, retinol supplements)',
        'Artificial sweeteners in large amounts',
        'Empty-calorie foods — baby needs nutrients now',
      ],
    ),
    Trimester.third: TrimesterGuide(
      title: 'Nutrition — Third Trimester',
      icon: Icons.restaurant,
      color: Color(0xFFF5C15A),
      intro:
          'Baby gains ~250g/week now. You need ~450 extra calories per day. '
          'Focus on brain development (DHA, choline) and your iron stores.',
      dos: [
        'DHA / Omega-3: salmon, sardines, supplements if needed',
        'Choline for brain: eggs, beans, peanuts, beef',
        'Calcium for bones: continue 1000mg/day',
        'Iron: baby stockpiles iron in last trimester',
        'Small meals — heartburn worsens with big meals',
        'Hydration: 10-12 glasses water daily',
        'Dates (6/day in weeks 36-40) may help cervical ripening',
      ],
      donts: [
        'Large meals before bed (heartburn)',
        'Lying flat after eating',
        'Spicy, acidic, fried foods if heartburn is bad',
        'Excess salt (swelling)',
        'Same exclusions as trimesters 1 and 2',
        'Any alcohol or cigarettes',
        'Ignoring hunger — your body is working hard',
      ],
    ),
  };

  // ==========================================================
  // EXERCISE
  // ==========================================================
  static const exerciseByTrimester = <Trimester, TrimesterGuide>{
    Trimester.first: TrimesterGuide(
      title: 'Exercise — First Trimester',
      icon: Icons.directions_walk,
      color: Color(0xFF9575CD),
      intro:
          'If you exercised before, keep going (with modifications). If new to exercise, '
          'start with walking. Aim for 150 minutes of moderate activity per week.',
      dos: [
        'Walking — 30 minutes most days',
        'Prenatal yoga (look for certified instructors)',
        'Swimming (once cleared by doctor)',
        'Stationary biking',
        'Light strength training',
        'Kegel exercises daily',
        'Listen to your body — rest when tired',
      ],
      donts: [
        'Contact sports (soccer, basketball)',
        'Activities with fall risk (skiing, horseback)',
        'Hot yoga or hot Pilates',
        'Scuba diving',
        'Lying flat on back after 16 weeks',
        'Overexertion — you should be able to talk',
        'Ignoring dizziness, bleeding, or pain',
      ],
    ),
    Trimester.second: TrimesterGuide(
      title: 'Exercise — Second Trimester',
      icon: Icons.directions_walk,
      color: Color(0xFF5BBCB4),
      intro:
          'You likely feel better. Continue moderate exercise 30 minutes most days. '
          'Focus on posture, core support, and pelvic floor.',
      dos: [
        'Walking, swimming, prenatal yoga',
        'Side-lying exercises instead of back',
        'Squats (great for birth prep)',
        'Pelvic tilts and cat-cow',
        'Light weights (focus on form)',
        'Stretching — hamstrings, hips, shoulders',
        'Warm up and cool down always',
      ],
      donts: [
        'Abdominal crunches (use modifications)',
        'Exercises requiring balance if dizzy',
        'Heavy lifting',
        'Bouncing or jarring movements',
        'Overheating — drink water, take breaks',
        'Pushing through pain',
        'Isolated ab work — focus on core stability',
      ],
    ),
    Trimester.third: TrimesterGuide(
      title: 'Exercise — Third Trimester',
      icon: Icons.directions_walk,
      color: Color(0xFF78909C),
      intro:
          'Movement is still important but slower and gentler. '
          'Exercise prepares you for labor and eases back pain.',
      dos: [
        'Walking daily (even short walks)',
        'Prenatal yoga or stretching',
        'Pelvic floor exercises',
        'Birthing ball sitting/bouncing',
        'Swimming (low-impact, relieves weight)',
        'Breathing exercises for labor',
        'Rest as needed — listen to your body',
      ],
      donts: [
        'High-impact activities',
        'New sports or intense classes',
        'Ignoring Braxton Hicks during exercise',
        'Exercising to exhaustion',
        'Supine positions (flat on back)',
        'Activities that strain your belly',
        'Pushing through pelvic pain',
      ],
    ),
  };

  // ==========================================================
  // PARTNER TIPS
  // ==========================================================
  static const partnerTipsByTrimester = <Trimester, TrimesterGuide>{
    Trimester.first: TrimesterGuide(
      title: 'For Partners — First Trimester',
      icon: Icons.diversity_2,
      color: Color(0xFFE8787A),
      intro:
          'She looks the same but her body is working overtime. '
          'Symptoms are intense, and pregnancy is often a secret. Your support matters most now.',
      dos: [
        'Go to the first prenatal appointments',
        'Take over chores with strong smells (cooking, trash)',
        'Stock the fridge with foods she can tolerate',
        'Be flexible with meals — her cravings will shift',
        'Offer water, snacks, and rest without being asked',
        'Keep the pregnancy confidential until she\'s ready',
        'Research pregnancy together — read this app too',
      ],
      donts: [
        'Take mood swings personally',
        'Question her food aversions ("but you used to love it!")',
        'Tell her "you look tired"',
        'Let her drink or smoke "a little"',
        'Schedule activities without considering her energy',
        'Forget she\'s growing a human',
        'Compare to other pregnancies',
      ],
    ),
    Trimester.second: TrimesterGuide(
      title: 'For Partners — Second Trimester',
      icon: Icons.diversity_2,
      color: Color(0xFF5BBCB4),
      intro:
          'The "honeymoon trimester." Energy returns, bump appears, first kicks come. '
          'This is bonding time — for you both.',
      dos: [
        'Go to the anatomy scan (huge moment)',
        'Talk to the bump — baby hears you from week 24',
        'Feel the kicks together',
        'Plan a babymoon if possible',
        'Paint the nursery together',
        'Read pregnancy books — understand her body',
        'Start setting up baby gear',
      ],
      donts: [
        'Assume she\'s "fine" now — still tired, sore',
        'Forget to appreciate her',
        'Miss appointments if you can help it',
        'Let visitors overwhelm her',
        'Push for decisions she\'s not ready to make',
        'Compare her bump to others\'',
        'Ignore her mental health',
      ],
    ),
    Trimester.third: TrimesterGuide(
      title: 'For Partners — Third Trimester',
      icon: Icons.diversity_2,
      color: Color(0xFF9575CD),
      intro:
          'She\'s uncomfortable, anxious, and nesting. Birth is close. '
          'Your calm, helpful presence is now the most important thing.',
      dos: [
        'Do EVERY physical chore — she can\'t bend',
        'Give foot and back massages nightly',
        'Practice the birth plan together',
        'Tour the hospital together',
        'Install the car seat — inspected!',
        'Pack YOUR hospital bag',
        'Stay within 30 min of her at 37+ weeks',
      ],
      donts: [
        'Take her snapping personally',
        'Get frustrated by nesting requests',
        'Travel far without telling her',
        'Postpone the birth plan conversation',
        'Drink or stay out late near due date',
        'Let visitors overstay',
        'Forget to take care of yourself too',
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
