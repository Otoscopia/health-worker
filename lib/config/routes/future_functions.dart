import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:health_worker/features/authentication/presentation/providers/application_provider.dart.dart';

User? cachedUser;
UserModel? cachedUserOffline;

loadUser(WidgetRef ref, bool? authenticated) async {
  try {
    Session session = await account.getSession(sessionId: currenSession);

    if (session.current) {
      User user = await account.get();
      cachedOnlineUserCheckpoint(user, ref);

      return true;
    }
  } on AppwriteException catch (error) {
    if (error.message != null) {
      String errorCode = error.message!.split(',')[0].split(':')[1].trim();
      if (errorMessageObject.containsKey(errorCode)) {
        List<UserModel> user = await database.userDao.fetchUser();

        if (user.first.uid != null) {
          cachedOfflineUserCheckpoint(user, ref);

          return true;
        }
      }
    }
  }
  return false;
}

void cachedOfflineUserCheckpoint(List<UserModel> user, WidgetRef ref) {
  if (cachedUserOffline == null || cachedUserOffline!.uid != user.first.uid) {
    ref.watch(applicationProvider.notifier).setUserFromDb(user.first);
    cachedUserOffline = user.first;
  }
}

void cachedOnlineUserCheckpoint(User user, WidgetRef ref) {
  if (cachedUser == null || cachedUser!.$id != user.$id) {
    ref.watch(applicationProvider.notifier).setUserFromCloud(user);
    cachedUser = user;
  }
}
