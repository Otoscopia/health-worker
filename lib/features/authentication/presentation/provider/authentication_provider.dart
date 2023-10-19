import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/exports.dart';

class AuthenticationNotifier extends StateNotifier<AuthenticationEntity> {
  final StateNotifierProviderRef<AuthenticationNotifier, AuthenticationEntity> ref;
  AuthenticationNotifier(this.ref) : super(AuthenticationEntity(loading: false, error: false, authenticated: false));

  signIn(String email, String password) async {
    final provider = ref.read(userProvider.notifier);
    state = AuthenticationEntity(loading: true, error: false, authenticated: false);
    final bool connected = ref.read(applicationStateProvider).connected;

    try {
      if (connected) {
        session = await account.createEmailSession(email: email, password: password);

        if (session.current) {
          examiner = await account.get();

          state = AuthenticationEntity(loading: false, error: false, authenticated: true);
          provider.setUser(examiner.$id, examiner.name, examiner.email, examiner.labels);
        }
      } else {
        state = AuthenticationEntity(loading: false, error: false, authenticated: true);
        state = AuthenticationEntity(loading: false, error: true, authenticated: false, errorMesage: connectionError);
      }
    } catch (error) {
      if (error.toString().isNotEmpty) {
        String errorCode = error.toString().split(',')[0].split(':')[1].trim();
        if (errorMessageObject.containsKey(errorCode)) {
          String errorMessage = errorMessageObject[errorCode]!;
          state = AuthenticationEntity(loading: false, error: true, authenticated: false, errorMesage: errorMessage);
        }
      }
    }
  }

  setAuthenicated(bool authenticated) {
    state = AuthenticationEntity(loading: false, error: false, authenticated: authenticated);
  }

  signOut() async {
    final provider = ref.read(userProvider);
    account.deleteSession(sessionId: currentSession);
    await isar.writeTxn(() async {
      await isar.userModels.filter().uidEqualTo(provider.uid).deleteAll();
    });
    state = AuthenticationEntity(
        loading: false, error: false, authenticated: false);
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationNotifier, AuthenticationEntity>((ref) {
  return AuthenticationNotifier(ref);
});
