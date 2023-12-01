import 'package:health_worker/features/app/domain/domain.dart';

/// Abstract class for defining user repository operations.
///
/// The [UserRepository] class outlines the operations related to user data,
/// such as fetching user information from remote and local databases, setting
/// user data locally, and removing user data from the local database.
abstract class UserRepository {
  /// Fetch user data from the remote database.
  ///
  /// This method is responsible for retrieving user information from a remote
  /// data source, such as an API or cloud database.
  Future<UserEntity> getRemoteUser();

  /// Fetch user data from the local database.
  ///
  /// This method is responsible for retrieving user information stored in a
  /// local database. The local database may be used for offline access or to
  /// cache user data for faster retrieval.
  Future<UserEntity> getUser();

  /// Set user data to the local database.
  ///
  /// This method is responsible for storing user information locally in a
  /// database. It is typically used after fetching user data from a remote
  /// source to cache the information for offline use.
  Future<void> setUser({required UserEntity user});

  /// Remove user data from the local database.
  ///
  /// This method is responsible for clearing or deleting user information from
  /// the local database. It may be used when the user logs out or when the
  /// application needs to reset user-related data.
  Future<void> removeUser();
}
