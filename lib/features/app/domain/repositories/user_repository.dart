import 'package:health_worker/features/app/domain/domain.dart';

abstract class UserRepository {
  // Get user from remote database
  Future<UserEntity> getRemoteUser();

  // Get user from local database
  Future<UserEntity> getUser();

  // Set user to local database
  Future<void> setUser({required UserEntity user});

  // Remove user from local database
  Future<void> removeUser();
}
