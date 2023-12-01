import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/authentication/authentication.dart';

/// Manages the state related to authentication operations.
///
/// The [AuthState] class is a [StateNotifier] responsible for handling the
/// loading state, error state, and associated error messages during
/// authentication operations. It provides methods to set and clear errors
/// and toggle the loading state.
///
/// The [authStateProvider] is a Riverpod state provider that encapsulates
/// the [AuthState] to be used within the application to observe and manage
/// authentication-related state changes.
///
/// Example usage:
/// ```dart
/// import 'auth_state_provider.dart';
///
/// //* Access the authentication state provider.
/// final authState = ref.read(authStateProvider);
///
/// //* Set an error with a custom error message.
/// authState.notifier.setError('Invalid credentials');
///
/// //* Clear the error state.
/// authState.notifier.clearError();
///
/// //* Toggle the loading state.
/// authState.notifier.setLoading(true);
/// ```
class AuthState extends StateNotifier<AuthStateEntity> {
  /// Constructor for the AuthState class.
  AuthState(): super(AuthStateEntity(loading: false, error: false, message: ""));
  
  /// Set an error state with a custom error message.
  void setError(String message) => state = AuthStateEntity(loading: false, error: true, message: message);

  /// Clear the error state.
  void clearError() => state = AuthStateEntity(loading: false, error: false, message: "");

  /// Toggle the loading state.
  void setLoading(bool value) => state = AuthStateEntity(loading: value, error: state.error, message: state.message);
}

/// The authentication state provider for observing and managing authentication state.
final authStateProvider = StateNotifierProvider<AuthState, AuthStateEntity>((ref) {
  return AuthState();
});
