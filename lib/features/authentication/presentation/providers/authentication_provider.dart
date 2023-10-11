import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/constants/constants.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';

class AuthenticationNotifier extends StateNotifier<UserEntity> {
  AuthenticationNotifier() : super(UserEntity());

  setUser(User user) async {
    List<UserModel> userData = await database.userDao.fetchUser();

    UserModel current = UserModel(
      id: userData.length,
      uid: user.$id,
      createdAt: user.$createdAt,
      updatedAt: user.$createdAt,
      name: user.name,
      registration: user.registration,
      passwordUpdate: user.passwordUpdate,
      email: user.email,
      phone: user.phone,
      accessedAt: user.accessedAt,
      emailVerification: user.emailVerification,
      phoneVerification: user.phoneVerification,
      prefs: user.prefs.toString(),
      status: user.status,
      labels: user.labels.toString(),
    );

    if (userData.isNotEmpty) {
      state = current;
    } else {
      state = current;
      database.userDao.insertUser(current);
    }
  }

  setUserFromDb(UserEntity user) {
    state = user;
  }

  signIn(String email, String password) async {
    Session session =
        await account.createEmailSession(email: email, password: password);

    if (session.current) {
      User user = await account.get();
      setUser(user);
    }
  }

  signOut() async {
    try {
      account.deleteSession(sessionId: currenSession);
    } on AppwriteException catch (error) {
      if (error.message != null) {
        if (error.message.toString().contains(offlineErrorMessage)) {
          state = UserEntity();
          database.userDao.dropUser();
        }
      }
    }
    state = UserEntity();
    database.userDao.dropUser();
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationNotifier, UserEntity>((ref) {
  return AuthenticationNotifier();
});
