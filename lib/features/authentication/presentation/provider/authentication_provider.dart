import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';

import 'package:health_worker/features/authentication/presentation/provider/user_provider.dart';
import 'package:health_worker/features/authentication/domain/entity/authentication_entity.dart';
import 'package:isar/isar.dart';

class AuthenticationNotifier extends StateNotifier<AuthenticationEntity> {
  final StateNotifierProviderRef<AuthenticationNotifier, AuthenticationEntity> ref;
  AuthenticationNotifier(this.ref) : super(AuthenticationEntity(loading: false, error: false, authenticated: false));

  signIn(String email, String password) async {
    final provider = ref.read(userProvider.notifier);
    state = AuthenticationEntity(loading: true, error: false, authenticated: false);

    try {
    state = AuthenticationEntity(loading: false, error: false, authenticated: true);
    provider.setUser("Laurence Troy Sambaan Valdez", email, "09262309684");
    } catch (error) {
      state = AuthenticationEntity(loading: false, error: true, authenticated: false, errorMesage: "$error");
    }

  }

  signOut() async {
    final provider = ref.read(userProvider);
    await isar.writeTxn(() async {
      await isar.userModels.filter().uidEqualTo(provider.uid).deleteAll();
    });
    state = AuthenticationEntity(loading: false, error: false, authenticated: false);
  }
}

final authenticationProvider = StateNotifierProvider<AuthenticationNotifier, AuthenticationEntity>((ref) {
  return AuthenticationNotifier(ref);
});