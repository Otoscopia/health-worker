import 'dart:convert';

import 'package:appwrite/models.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/constants/constants.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/domain/entity/authentication_entity.dart';
import 'package:health_worker/features/authentication/presentation/providers/application_provider.dart.dart';

class AuthenticationNotifier extends StateNotifier<AuthenticationEntity> {
  AuthenticationNotifier()
      : super(AuthenticationEntity(loading: false, error: false));

  signIn(String email, String password) async {
    final container = ProviderContainer();
    final provider = container.read(applicationProvider.notifier);

    setProvider(true, false, "", false, false);

    try {
      Session session = await account.createEmailSession(email: email, password: password);
      if (session.current) {
        User user = await account.get();

        teamList = await team.list();

        var bytes = utf8.encode(teamList.teams.first.$id);
        var digest = sha256.convert(bytes);

        await storage.write(key: user.$id, value: digest.toString());

        setProvider(false, false, "", true, false);
        provider.setUserFromCloud(user);
      }
    } catch (error) {
      setProvider(false, true, error.toString(), false, false);
    }
  }

  setProvider(bool loading, bool error, String? errorMessage,
      bool? authenticated, bool? signedOut) {
    state = AuthenticationEntity(
        loading: loading,
        error: error,
        errorMessage: errorMessage,
        authenticated: authenticated,
        signedOut: signedOut);
  }

  signOut() {
    setProvider(true, false, "", false, false);
    try {
      account.deleteSession(sessionId: currenSession);
      setProvider(false, false, "", false, true);
      database.authDao.dropAuthStatus();
      database.userDao.dropUser();
    } catch (error) {
      setProvider(false, true, error.toString(), true, false);
    }
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationNotifier, AuthenticationEntity>((ref) {
  return AuthenticationNotifier();
});
