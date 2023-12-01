import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

/// Asynchronous function to fetch and provide user information.
///
/// The [user] function is responsible for retrieving user information either
/// from the remote database (when the network is available) or from the local
/// database (when the network is offline). It utilizes the [UserUseCases] class
/// to handle the logic of fetching and storing user data. The user data is then
/// added to the [UserNotifier] state, and the user entity is returned.
///
/// Example usage:
/// ```dart
/// import 'future_user_provider.dart';
///
/// //* Access user information using the userProvider.
/// final userEntity = await user(ref);
/// ```
Future<UserEntity> user(WidgetRef ref) async {
  late final UserEntity user;

  if (ref.read(networkProvider)) {
    user = await useCases.userUseCases.getRemoteUser();

    await useCases.userUseCases.setUser(user: user);
  } else {
    user = await useCases.userUseCases.getUser();
  }

  ref.read(userProvider.notifier).addUser(user);

  return user;
}

/// Notifier class for managing the user entity state.
///
/// The [UserNotifier] class extends [StateNotifier] and is responsible for
/// managing the state of the user entity. It provides a method [addUser] to
/// update the state with a new user entity.
class UserNotifier extends StateNotifier<UserEntity> {
  UserNotifier() : super(UserEntity.empty());

  /// Update the state with the provided [user].
  addUser(UserEntity user) => state = user;
}

/// StateNotifierProvider for managing the user entity state.
///
/// The [userProvider] is a [StateNotifierProvider] that creates and provides
/// an instance of [UserNotifier]. It allows widgets to access and subscribe
/// to the state of the user entity using the [userProvider].
final userProvider = StateNotifierProvider<UserNotifier, UserEntity>((ref) {
  return UserNotifier();
});
