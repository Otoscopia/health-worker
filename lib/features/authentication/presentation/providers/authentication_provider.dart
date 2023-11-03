import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/authentication/authentication.dart';

final authenticationStateProvider = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationEntity?>((ref) {
  return AuthenticationStateNotifier();
});

class AuthenticationStateNotifier extends StateNotifier<AuthenticationEntity?> {
  AuthenticationStateNotifier() : super(null);

  Future<void> signIn(String email, String password, WidgetRef ref) async {
    ref.read(authStateProvider.notifier).setLoading(true);

    final signInUseCase = SignInUseCase(authenticationRepository: authenticationRepository);
    final fetchCurrentUserUseCase = GetCurrentUserUseCase(authenticationRepository: authenticationRepository);

    try {
      final authenticationEntity = await signInUseCase.execute(email: email, password: password);
      final UserEntity user = await fetchCurrentUserUseCase.execute();
      
      if (user.label.contains("nurse")) {
        ref.read(authStateProvider.notifier).setLoading(false);
        state = authenticationEntity;
        return;
      }

      ref.read(authStateProvider.notifier).setLoading(false);
      ref.read(authStateProvider.notifier).setError("Only school nurse are allowed to use this app.");
      return;
    } catch (error) {
      ref.read(authStateProvider.notifier).setLoading(false);
      ref.read(authStateProvider.notifier).setError(error.toString());
    }
  }

  Future<void> signOut() async {
    final signOutUseCase = SignOutUseCase(authenticationRepository: authenticationRepository);
    await signOutUseCase.execute();
    state = null;
  }

  Future<UserEntity?> getCurrentUser() async {
    final fetchCurrentUserUseCase = GetCurrentUserUseCase(authenticationRepository: authenticationRepository);
    try {
      final UserEntity user = await fetchCurrentUserUseCase.execute();
      state = AuthenticationEntity(email: user.email, password: user.key);
      return user;
    } catch (_) {
      return null;
    }
  }
}
