import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import '../../main.dart' show isFirebaseInitialized;

/// Analytics service that logs events to Firebase Analytics when available,
/// and no-ops gracefully in demo mode.
///
/// All events defined here become a single source of truth for what we track.
class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._();
  factory AnalyticsService() => _instance;
  AnalyticsService._();

  FirebaseAnalytics? get _analytics =>
      isFirebaseInitialized ? FirebaseAnalytics.instance : null;

  // ==========================================================
  // USER LIFECYCLE
  // ==========================================================

  Future<void> logSignUp({required String method}) async {
    await _log('sign_up', {'method': method});
    await _analytics?.logSignUp(signUpMethod: method);
  }

  Future<void> logLogin({required String method}) async {
    await _log('login', {'method': method});
    await _analytics?.logLogin(loginMethod: method);
  }

  Future<void> setUserProperties({
    required String stage,
    int? currentWeek,
    int? babyAgeMonths,
  }) async {
    await _analytics?.setUserProperty(name: 'parenting_stage', value: stage);
    if (currentWeek != null) {
      await _analytics?.setUserProperty(
        name: 'pregnancy_week',
        value: currentWeek.toString(),
      );
    }
    if (babyAgeMonths != null) {
      await _analytics?.setUserProperty(
        name: 'baby_age_months',
        value: babyAgeMonths.toString(),
      );
    }
  }

  // ==========================================================
  // FEATURE USAGE
  // ==========================================================

  Future<void> logStageSelected(String stage) async {
    await _log('stage_selected', {'stage': stage});
  }

  Future<void> logDueDateSet() => _log('due_date_set', {});

  Future<void> logBabyBirthDateSet() => _log('baby_birth_date_set', {});

  Future<void> logTrackingEntry(String type) async {
    await _log('tracking_entry', {'type': type});
  }

  Future<void> logAiChatMessage() => _log('ai_chat_message', {});

  Future<void> logToolOpened(String toolName) async {
    await _log('tool_opened', {'tool': toolName});
  }

  Future<void> logFeatureViewed(String feature) async {
    await _log('feature_viewed', {'feature': feature});
  }

  Future<void> logSoundPlayed(String soundId) async {
    await _log('sound_played', {'sound_id': soundId});
  }

  Future<void> logContractionLogged() => _log('contraction_logged', {});

  Future<void> logHospitalBagItemChecked() =>
      _log('hospital_bag_item_checked', {});

  Future<void> logBirthPlanAnswered() => _log('birth_plan_answered', {});

  Future<void> logFoodViewed(String foodName) async {
    await _log('food_viewed', {'food': foodName});
  }

  Future<void> logProductClicked(String productId) async {
    await _log('product_clicked', {'product_id': productId});
  }

  // ==========================================================
  // SCREEN TRACKING
  // ==========================================================

  Future<void> logScreenView(String screenName) async {
    await _analytics?.logScreenView(screenName: screenName);
  }

  // ==========================================================
  // INTERNAL
  // ==========================================================

  Future<void> _log(String name, Map<String, Object> params) async {
    if (kDebugMode) {
      debugPrint('[Analytics] $name ${params.isEmpty ? '' : params}');
    }
    await _analytics?.logEvent(name: name, parameters: params);
  }
}
