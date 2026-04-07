import 'package:flutter/material.dart';
import '../l10n/content_localizations.dart';

/// Procedural sound categories for newborns, parents, and focus.
/// Inspired by BabyBoo — sounds are generated procedurally (no audio files).

enum SoundCategory {
  babySleep(L3(en: 'Baby Sleep', ru: 'Сон малыша', ky: 'Бөбөктүн уйкусу'), Icons.child_care),
  nature(L3(en: 'Nature', ru: 'Природа', ky: 'Жаратылыш'), Icons.forest),
  parentRelax(L3(en: 'Parent Relax', ru: 'Релакс для родителей', ky: 'Ата-эне эс алуусу'), Icons.spa),
  focus(L3(en: 'Focus', ru: 'Концентрация', ky: 'Көңүл буруу'), Icons.center_focus_strong);

  const SoundCategory(this.label, this.icon);
  final L3 label;
  final IconData icon;
}

/// How to procedurally generate each sound.
/// Used by the noise generator to produce waveforms on-device.
enum NoiseType {
  white,      // Flat random noise
  pink,       // 1/f filtered noise — softer, more natural
  brown,      // Deep red noise — very low frequencies
  heartbeat,  // Rhythmic low-frequency pulse
  womb,       // Low rumble + heartbeat
  shushing,   // Modulated filtered noise (shh shh)
  lullaby,    // Soft sine drone
  rain,       // High-pass filtered noise
  ocean,      // Slowly modulated noise
  thunder,    // Brown noise + occasional rumble
  forest,     // Pink noise + chirps
  wind,       // Low-pass modulated noise
  crickets,   // Rhythmic chirps
  fireplace,  // Brown noise + crackles
  cafe,       // Pink noise (simulates background chatter)
  train,      // Brown noise + rhythm
  library,    // Very soft pink noise
}

class SoundPreset {
  final String id;
  final L3 name;
  final L3 description;
  final IconData icon;
  final Color color;
  final SoundCategory category;
  final NoiseType type;

  const SoundPreset({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
    required this.category,
    required this.type,
  });
}

class SoundsData {
  SoundsData._();

  static const presets = <SoundPreset>[
    // BABY SLEEP
    SoundPreset(
      id: 'white',
      name: L3(en: 'White Noise', ru: 'Белый шум', ky: 'Ак ызы-чуу'),
      description: L3(en: 'Gentle static', ru: 'Мягкий шум', ky: 'Жумшак ызы-чуу'),
      icon: Icons.cloud_outlined,
      color: Color(0xFFBDBDBD),
      category: SoundCategory.babySleep,
      type: NoiseType.white,
    ),
    SoundPreset(
      id: 'pink',
      name: L3(en: 'Pink Noise', ru: 'Розовый шум', ky: 'Кызгылт ызы-чуу'),
      description: L3(en: 'Soft & warm', ru: 'Мягкий и тёплый', ky: 'Жумшак жана жылуу'),
      icon: Icons.filter_vintage,
      color: Color(0xFFE8787A),
      category: SoundCategory.babySleep,
      type: NoiseType.pink,
    ),
    SoundPreset(
      id: 'heartbeat',
      name: L3(en: 'Heartbeat', ru: 'Сердцебиение', ky: 'Жүрөк кагуу'),
      description: L3(en: "Like mama's heart", ru: 'Как сердце мамы', ky: 'Эненин жүрөгүндөй'),
      icon: Icons.favorite,
      color: Color(0xFFE53935),
      category: SoundCategory.babySleep,
      type: NoiseType.heartbeat,
    ),
    SoundPreset(
      id: 'womb',
      name: L3(en: 'Womb', ru: 'Утроба', ky: 'Жатын'),
      description: L3(en: 'Safe & familiar', ru: 'Безопасно и знакомо', ky: 'Коопсуз жана тааныш'),
      icon: Icons.pregnant_woman,
      color: Color(0xFFEC407A),
      category: SoundCategory.babySleep,
      type: NoiseType.womb,
    ),
    SoundPreset(
      id: 'shushing',
      name: L3(en: 'Shushing', ru: 'Шшш', ky: 'Шшш'),
      description: L3(en: 'Gentle shh shh', ru: 'Мягкое шш шш', ky: 'Жумшак шш шш'),
      icon: Icons.do_not_disturb_on_outlined,
      color: Color(0xFF9575CD),
      category: SoundCategory.babySleep,
      type: NoiseType.shushing,
    ),
    SoundPreset(
      id: 'lullaby',
      name: L3(en: 'Lullaby Hum', ru: 'Колыбельная', ky: 'Бешик ыры'),
      description: L3(en: 'Soft drone', ru: 'Мягкое гудение', ky: 'Жумшак дүңгүрөө'),
      icon: Icons.music_note,
      color: Color(0xFFF5C15A),
      category: SoundCategory.babySleep,
      type: NoiseType.lullaby,
    ),

    // NATURE
    SoundPreset(
      id: 'rain',
      name: L3(en: 'Rain', ru: 'Дождь', ky: 'Жамгыр'),
      description: L3(en: 'Gentle rainfall', ru: 'Лёгкий дождь', ky: 'Жеңил жамгыр'),
      icon: Icons.water_drop,
      color: Color(0xFF4FC3F7),
      category: SoundCategory.nature,
      type: NoiseType.rain,
    ),
    SoundPreset(
      id: 'ocean',
      name: L3(en: 'Ocean', ru: 'Океан', ky: 'Океан'),
      description: L3(en: 'Calm waves', ru: 'Спокойные волны', ky: 'Тынч толкундар'),
      icon: Icons.waves,
      color: Color(0xFF5BBCB4),
      category: SoundCategory.nature,
      type: NoiseType.ocean,
    ),
    SoundPreset(
      id: 'thunder',
      name: L3(en: 'Thunder', ru: 'Гроза', ky: 'Күн күркүрөө'),
      description: L3(en: 'Distant storm', ru: 'Далёкая гроза', ky: 'Алыстагы бороон'),
      icon: Icons.bolt,
      color: Color(0xFF546E7A),
      category: SoundCategory.nature,
      type: NoiseType.thunder,
    ),
    SoundPreset(
      id: 'forest',
      name: L3(en: 'Forest', ru: 'Лес', ky: 'Токой'),
      description: L3(en: 'Birds & breeze', ru: 'Птицы и ветерок', ky: 'Канаттуулар жана шамал'),
      icon: Icons.forest,
      color: Color(0xFF66BB6A),
      category: SoundCategory.nature,
      type: NoiseType.forest,
    ),
    SoundPreset(
      id: 'wind',
      name: L3(en: 'Wind', ru: 'Ветер', ky: 'Шамал'),
      description: L3(en: 'Gentle breeze', ru: 'Лёгкий ветерок', ky: 'Жеңил шамал'),
      icon: Icons.air,
      color: Color(0xFF80DEEA),
      category: SoundCategory.nature,
      type: NoiseType.wind,
    ),
    SoundPreset(
      id: 'crickets',
      name: L3(en: 'Crickets', ru: 'Сверчки', ky: 'Чегирткелер'),
      description: L3(en: 'Summer night', ru: 'Летняя ночь', ky: 'Жайкы түн'),
      icon: Icons.nightlight_round,
      color: Color(0xFF26A69A),
      category: SoundCategory.nature,
      type: NoiseType.crickets,
    ),

    // PARENT RELAX
    SoundPreset(
      id: 'fireplace',
      name: L3(en: 'Fireplace', ru: 'Камин', ky: 'Камин'),
      description: L3(en: 'Crackling fire', ru: 'Треск огня', ky: 'Оттун тарсылы'),
      icon: Icons.fireplace,
      color: Color(0xFFFF7043),
      category: SoundCategory.parentRelax,
      type: NoiseType.fireplace,
    ),
    SoundPreset(
      id: 'cafe',
      name: L3(en: 'Coffee Shop', ru: 'Кофейня', ky: 'Кофейня'),
      description: L3(en: 'Cozy chatter', ru: 'Уютный гомон', ky: 'Жайлуу дүңгүрөө'),
      icon: Icons.local_cafe,
      color: Color(0xFFA1887F),
      category: SoundCategory.parentRelax,
      type: NoiseType.cafe,
    ),
    SoundPreset(
      id: 'train',
      name: L3(en: 'Train Journey', ru: 'Поезд', ky: 'Поезд сапары'),
      description: L3(en: 'Rhythmic rails', ru: 'Ритм рельсов', ky: 'Рельстердин ыргагы'),
      icon: Icons.train,
      color: Color(0xFF78909C),
      category: SoundCategory.parentRelax,
      type: NoiseType.train,
    ),

    // FOCUS
    SoundPreset(
      id: 'brown',
      name: L3(en: 'Brown Noise', ru: 'Коричневый шум', ky: 'Күрөң ызы-чуу'),
      description: L3(en: 'Deep & rich', ru: 'Глубокий и насыщенный', ky: 'Терең жана бай'),
      icon: Icons.graphic_eq,
      color: Color(0xFF8D6E63),
      category: SoundCategory.focus,
      type: NoiseType.brown,
    ),
    SoundPreset(
      id: 'library',
      name: L3(en: 'Library', ru: 'Библиотека', ky: 'Китепкана'),
      description: L3(en: 'Quiet study', ru: 'Тихая учёба', ky: 'Тынч окуу'),
      icon: Icons.menu_book,
      color: Color(0xFF90A4AE),
      category: SoundCategory.focus,
      type: NoiseType.library,
    ),
  ];

  static List<SoundPreset> byCategory(SoundCategory cat) {
    return presets.where((p) => p.category == cat).toList();
  }

  static SoundPreset? byId(String id) {
    try {
      return presets.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }
}

/// Sleep timer presets for the sound player.
class SleepTimer {
  final L3 label;
  final Duration? duration; // null = off / infinite

  const SleepTimer(this.label, this.duration);

  static const off = SleepTimer(L3(en: 'Off', ru: 'Выкл', ky: 'Өчүк'), null);
  static const t15 = SleepTimer(L3(en: '15m', ru: '15м', ky: '15м'), Duration(minutes: 15));
  static const t30 = SleepTimer(L3(en: '30m', ru: '30м', ky: '30м'), Duration(minutes: 30));
  static const t60 = SleepTimer(L3(en: '1h', ru: '1ч', ky: '1с'), Duration(hours: 1));
  static const t120 = SleepTimer(L3(en: '2h', ru: '2ч', ky: '2с'), Duration(hours: 2));
  static const tAllNight = SleepTimer(L3(en: 'All Night', ru: 'Всю ночь', ky: 'Бүт түн'), Duration(hours: 8));

  static const all = <SleepTimer>[off, t15, t30, t60, t120, tAllNight];
}
