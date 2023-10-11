import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/domain/entity/authentication_entity.dart';
import 'package:health_worker/features/authentication/presentation/providers/application_provider.dart.dart';

class AuthenticationNotifier extends StateNotifier<AuthenticationEntity> {
  AuthenticationNotifier() : super(AuthenticationEntity(loading: false, error: false));

  signIn(String email, String password) async {
    final container = ProviderContainer();
    final provider = container.read(applicationProvider.notifier);

    setProvider(true, false, "");

    try {
      Session session = await account.createEmailSession(email: email, password: password);
      if (session.current) {
        User user = await account.get();
        provider.setUserFromCloud(user);
        setProvider(true, false, "");
      }
    } catch (error) {
      setProvider(false, true, error.toString());
    }
  }

  setProvider(bool loading, bool error, String? errorMessage) {
    state = AuthenticationEntity(
        loading: loading, error: error, errorMessage: errorMessage);
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationNotifier, AuthenticationEntity>((ref) {
  return AuthenticationNotifier();
});
