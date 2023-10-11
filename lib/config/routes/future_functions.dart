import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';
import 'package:health_worker/features/authentication/presentation/providers/authentication_provider.dart';

User? cachedUser;
UserModel? cachedUserOffline;

loadUser(WidgetRef ref, String? uid) async {
  try {
    Session session = await account.getSession(sessionId: currenSession);

    if (session.current) {
      User user = await account.get();
      cachedOnlineUserCheckpoint(user, ref);

      return user.$id;
    }
  } on AppwriteException catch (error) {
    if (error.message != null) {
      if (error.message.toString().contains(offlineErrorMessage)) {
        List<UserModel> user = await database.userDao.fetchUser();

        if (user.first.uid != null) {
          cachedOfflineUserCheckpoint(user, ref);
          return user.first.uid;
        }
      }
      return UserEntity().uid;
    }
    return UserEntity().uid;
  }
}

void cachedOfflineUserCheckpoint(List<UserModel> user, WidgetRef ref) {
  if (cachedUserOffline == null || cachedUserOffline!.uid != user.first.uid) {
    ref.watch(authenticationProvider.notifier).setUserFromDb(user.first);
    cachedUserOffline = user.first;
  }
}

void cachedOnlineUserCheckpoint(User user, WidgetRef ref) {
  if (cachedUser == null || cachedUser!.$id != user.$id) {
    ref.watch(authenticationProvider.notifier).setUser(user);
    cachedUser = user;
  }
}
