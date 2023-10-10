import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';

class AuthenticationNotifier extends StateNotifier<UserEntity> {
  AuthenticationNotifier() : super(UserEntity());

  setUser(User user) async {
    UserModel? uid = await database.userDao.findUserByUid(user.$id);

    UserModel current = UserModel(
      id: 0,
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

    if (uid != null) {
      state = current;
    } else {
      state = current;
      database.userDao.insertUser(current);
    }
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
    account.deleteSession(sessionId: 'current');
    state = UserEntity();
    database.userDao.dropUser();
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationNotifier, UserEntity>((ref) {
  return AuthenticationNotifier();
});
