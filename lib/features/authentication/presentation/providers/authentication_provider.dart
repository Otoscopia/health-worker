import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/authentication/authentication.dart';

/// Manages the authentication state within the application.
///
/// The [authenticationStateProvider] is a Riverpod state provider that
/// encapsulates the authentication state and provides methods for signing
/// in, signing out, and retrieving the current authenticated user.
///
/// The [AuthenticationStateNotifier] class extends [StateNotifier] and
/// is responsible for handling authentication-related operations, such as
/// signing in, signing out, and fetching the current user.
///
/// Example usage:
/// ```dart
/// import 'authentication_provider.dart';
///
/// //* Access the authentication state provider.
/// final authState = ref.read(authenticationStateProvider);
///
/// //* Perform sign-in operation.
/// await authState.notifier.signIn('user@example.com', 'password', ref);
///
/// //* Perform sign-out operation.
/// await authState.notifier.signOut();
///
/// //* Retrieve the current authenticated user.
/// final currentUser = await authState.notifier.getCurrentUser();
/// ```
final authenticationStateProvider = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationEntity?>((ref) {
  return AuthenticationStateNotifier();
});

// Manages the authentication state within the application.
class AuthenticationStateNotifier extends StateNotifier<AuthenticationEntity?> {
  /// Constructor for the AuthenticationStateNotifier.
  AuthenticationStateNotifier() : super(null);

  /// Sign in the user with the provided email and password.
  ///
  /// This method uses the [SignInUseCase] and [GetCurrentUserUseCase] to
  /// authenticate the user and fetch their information. It also handles
  /// loading state, errors, and specific role checks (e.g., "nurse").
  Future<void> signIn(String email, String password, WidgetRef ref) async {
    // Set loading state to true.
    ref.read(authStateProvider.notifier).setLoading(true);

    // Initialize sign in use case.
    final signInUseCase = SignInUseCase(authenticationRepository: authenticationRepository);

    // Initialize fetch current user use case.
    final fetchCurrentUserUseCase = GetCurrentUserUseCase(authenticationRepository: authenticationRepository);

    try {
      // Authenticate the user.
      final authenticationEntity = await signInUseCase.execute(email: email, password: password);

      // Fetch the current user.
      final User user = await fetchCurrentUserUseCase.execute();
      
      // Check if the user is a nurse.
      if (user.labels.contains("nurse")) {
        // Set loading state to false.
        ref.read(authStateProvider.notifier).setLoading(false);

        // Set the authentication state.
        state = authenticationEntity;

        // stop execution
        return;
      }

      // Set loading state to false.
      ref.read(authStateProvider.notifier).setLoading(false);

      // Set error state with custom error message.
      ref.read(authStateProvider.notifier).setError("Only school nurses are allowed to use this app.");

      // stop execution
      return;
    } catch (error) {
      // Set loading state to false.
      ref.read(authStateProvider.notifier).setLoading(false);

      // Set error state with custom error message.
      ref.read(authStateProvider.notifier).setError(error.toString());
    }
  }

  /// Sign out the authenticated user.
  ///
  /// This method uses the [SignOutUseCase] to sign out the user and performs
  /// additional cleanup by removing data related to users, assignments, doctors,
  /// patients, remarks, schools, screenings, etc.
  Future<void> signOut() async {
    // Initialize sign out use case.
    final signOutUseCase = SignOutUseCase(authenticationRepository: authenticationRepository);

    // Execute sign out use case.
    await signOutUseCase.execute();

    // Remove all data related to users, assignments, doctors, patients, remarks,
    // schools, screenings, etc.
    await useCases.userUseCases.removeUser();
    await useCases.assignmentsUseCase.removeAssignments();
    await useCases.doctorsUseCases.removeDoctors();
    await useCases.patientsUseCases.removePatients();
    await useCases.remarksUseCases.removeRemark();
    await useCases.schoolsUseCase.removeSchools();
    await useCases.screeningsUseCases.removeScreenings();

    // Clear the authentication state.
    state = null;
  }
  
  /// Fetch the current authenticated user.
  ///
  /// This method uses the [GetCurrentUserUseCase] to retrieve the current user's
  /// information. It updates the authentication state with the fetched user's
  /// email and an empty password.
  Future<User?> getCurrentUser() async {
    // Initialize fetch current user use case.
    final fetchCurrentUserUseCase = GetCurrentUserUseCase(authenticationRepository: authenticationRepository);
    try {
      // Fetch the current user.
      final User user = await fetchCurrentUserUseCase.execute();

      // Update the authentication state.
      state = AuthenticationEntity(email: user.email, password: "");

      // Return the fetched user.
      return user;
    } catch (_) {
      // Return null if the user is not authenticated.
      return null;
    }
  }
}
