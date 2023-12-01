import 'package:health_worker/features/features.dart';

/// Use cases for managing user-related operations.
///
/// The [UserUseCases] class provides high-level use cases for handling user
/// operations. It acts as an intermediary between the application's
/// presentation layer and the [UserRepository], encapsulating the logic for
/// fetching user data from remote and local sources, setting user data, and
/// removing user data.
class UserUseCases {
  final UserRepository _repository;

  /// Constructor for initializing [UserUseCases] with a [UserRepository].
  UserUseCases({required UserRepository repository}) : _repository = repository;

  /// Fetch user data from the remote database.
  ///
  /// This method delegates the task to the associated [UserRepository] to
  /// retrieve user information from a remote data source.
  Future<UserEntity> getRemoteUser() async {
    return await _repository.getRemoteUser();
  }

  /// Set user data to the local database.
  ///
  /// This method delegates the task to the associated [UserRepository] to store
  /// user information locally in a database.
  Future<void> setUser({required UserEntity user}) async {
    return await _repository.setUser(user: user);
  }

  /// Fetch user data from the local database.
  ///
  /// This method delegates the task to the associated [UserRepository] to
  /// retrieve user information stored in a local database.
  Future<UserEntity> getUser() async {
    return await _repository.getUser();
  }

  /// Remove user data from the local database.
  ///
  /// This method delegates the task to the associated [UserRepository] to clear
  /// or delete user information from the local database.
  Future<void> removeUser() async {
    return await _repository.removeUser();
  }
}
