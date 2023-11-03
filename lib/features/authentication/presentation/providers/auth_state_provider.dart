import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/authentication/authentication.dart';

class AuthState extends StateNotifier<AuthStateEntity> {
  AuthState(): super(AuthStateEntity(loading: false, error: false, message: ""));
  
  setError(String message) => state = AuthStateEntity(loading: false, error: true, message: message);
  clearError() => state = AuthStateEntity(loading: false, error: false, message: "");
  setLoading(bool value) => state = AuthStateEntity(loading: value, error: state.error, message: state.message);
}

final authStateProvider = StateNotifierProvider<AuthState, AuthStateEntity>((ref) {
  return AuthState();
});