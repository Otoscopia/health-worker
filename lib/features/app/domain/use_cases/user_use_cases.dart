import 'package:health_worker/features/features.dart';

class UserUseCases {
  final UserRepository _repository;

  UserUseCases({required UserRepository repository}) : _repository = repository;

  // Get user from remote database using user repository
  Future<UserEntity> getRemoteUser() async {
    return await _repository.getRemoteUser();
  }

  // Set user to local database using user repository
  Future<void> setUser({required UserEntity user}) async {
    return await _repository.setUser(user: user);
  }

  // Find user from local database using user repository
  Future<UserEntity> getUser() async {
    return await _repository.getUser();
  }

  // Remove user from local database using user repository
  Future<void> removeUser() async {
    return await _repository.removeUser();
  }
}
