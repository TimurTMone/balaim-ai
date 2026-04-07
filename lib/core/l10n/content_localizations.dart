import 'package:flutter/material.dart';

/// Returns the current language code from context.
/// Use this in seed data to pick the right translation.
///
/// Usage in any data class:
///   String get name => localize(context, en: 'Apple', ru: 'Яблоко', ky: 'Алма');
///
/// Or for static data accessed without context:
///   String name(String lang) => _t(lang, en: 'Apple', ru: 'Яблоко', ky: 'Алма');
String currentLang(BuildContext context) {
  return Localizations.localeOf(context).languageCode;
}

/// Pick the right string based on language code.
/// Falls back to English if translation is missing.
String tr(String lang, {required String en, String? ru, String? ky}) {
  switch (lang) {
    case 'ru':
      return ru ?? en;
    case 'ky':
      return ky ?? ru ?? en;
    default:
      return en;
  }
}

/// Context-based version — gets lang from BuildContext.
String trc(BuildContext context, {required String en, String? ru, String? ky}) {
  return tr(currentLang(context), en: en, ru: ru, ky: ky);
}

/// A localized string holder — stores all 3 translations inline.
/// Use when you want compile-time safety for trilingual content.
class L3 {
  final String en;
  final String ru;
  final String ky;

  const L3({required this.en, String? ru, String? ky})
      : ru = ru ?? en,
        ky = ky ?? ru ?? en;

  /// Get the string for the current locale.
  String of(BuildContext context) {
    return tr(currentLang(context), en: en, ru: ru, ky: ky);
  }

  /// Get the string for a specific language code.
  String forLang(String lang) {
    return tr(lang, en: en, ru: ru, ky: ky);
  }

  @override
  String toString() => en; // Default to English for debugging
}
