import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/auth_service.dart';
import '../../../core/services/demo_auth_service.dart';

/// Demo service provider — kept for Profile screen access to demo user details.
final demoAuthServiceProvider = Provider<DemoAuthService>((ref) {
  return DemoAuthService();
});

/// Demo user (role-specific info like admin/doctor/vendor).
/// Only populated in demo mode; null in Firebase mode.
final currentDemoUserProvider = Provider<DemoUser?>((ref) {
  return ref.watch(_demoUserStreamProvider).valueOrNull;
});

final _demoUserStreamProvider = StreamProvider<DemoUser?>((ref) {
  return ref.watch(demoAuthServiceProvider).authStateChanges;
});

/// Auth state — true when user is signed in (Firebase or demo).
/// This is what the router watches.
final authStateProvider = StreamProvider<bool>((ref) {
  return AuthService().authStateChanges;
});

/// Current user display info — works across Firebase and demo.
final currentUserInfoProvider = Provider<({String? uid, String? email, String? name})>((ref) {
  // Force rebuild when auth state changes
  ref.watch(authStateProvider);
  final auth = AuthService();
  return (
    uid: auth.currentUid,
    email: auth.currentEmail,
    name: auth.currentDisplayName,
  );
});
