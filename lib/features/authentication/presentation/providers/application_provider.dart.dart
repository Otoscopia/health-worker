import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/authentication_model.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';

class ApplicationNotifier extends StateNotifier<UserEntity> {
  ApplicationNotifier() : super(UserEntity());

  setUserFromCloud(User user) async {
    List<UserModel> userData = await database.userDao.fetchUser();
    List<AuthenticationModel> authData = await database.authDao.fetchAuthStatus();

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

    AuthenticationModel authState = AuthenticationModel(
      id: authData.length,
      loading: false,
      error: false,
      authenticated: true,
      signedOut: false,
    );

    if (userData.isNotEmpty && authData.first.signedOut == false) {
      state = current;
    } else {
      state = current;
      database.userDao.insertUser(current);
      database.authDao.insertAuthStatus(authState);
    }
  }

  setUserFromDb(UserEntity user) {
    state = user;
  }
}

final applicationProvider =
    StateNotifierProvider<ApplicationNotifier, UserEntity>((ref) {
  return ApplicationNotifier();
});
