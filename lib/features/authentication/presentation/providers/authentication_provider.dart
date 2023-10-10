import 'package:appwrite/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:otoscopia_health_worker/dependency_injection.dart';
import 'package:otoscopia_health_worker/features/authentication/domain/entity/user_entity.dart';

class AuthenticationNotifier extends StateNotifier<UserEntity> {
  AuthenticationNotifier() : super(UserEntity());

  signIn(String email, String password) async {
    Session session =
        await account.createEmailSession(email: email, password: password);

    if (session.current) {
      User user = await account.get();

      state = UserEntity(
        uid: user.$id,
        createdAt: user.$createdAt,
        updatedAt: user.$updatedAt,
        name: user.name,
        registration: user.registration,
        passwordUpdate: user.passwordUpdate,
        email: user.email,
        phone: user.phone,
        accessedAt: user.accessedAt,
        status: user.status,
        emailVerification: user.emailVerification,
        phoneVerification: user.phoneVerification,
        prefs: user.prefs.toString(),
        labels: user.labels.toString(),
      );
    }
  }

  signOut() {
    account.deleteSession(sessionId: 'current').catchError(
      (onError) {
        debugPrint("Error $onError");
      },
    ).then(
      (value) => state = UserEntity(),
    );
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationNotifier, UserEntity>((ref) {
  return AuthenticationNotifier();
});
