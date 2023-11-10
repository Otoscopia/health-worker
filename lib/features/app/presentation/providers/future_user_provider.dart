import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureUserProvider = FutureProvider<UserEntity>((ref) async {
  final auth = ref.watch(authenticationStateProvider);
  late final UserEntity user;

  if (auth?.email != null) {
    user = await useCases.userUseCases.getRemoteUser();
    await useCases.userUseCases.setUser(user: user);

    ref.read(userProvider.notifier).addUser(user);
  }

  return user;
});

class UserNotifier extends StateNotifier<UserEntity> {
  UserNotifier() : super(emptyUser);

  addUser(UserEntity user) => state = user;
}

final userProvider = StateNotifierProvider<UserNotifier, UserEntity>((ref) {
  return UserNotifier();
});

UserEntity emptyUser = UserEntity(
  id: "",
  name: "",
  email: "",
  phone: "",
  role: "",
  workAddress: "",
);
