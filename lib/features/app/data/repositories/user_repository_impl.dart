import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class UserRepositoryImpl implements UserRepository {
  final LocalUserDataSource _local;
  final RemoteUserDataSource _remote;

  UserRepositoryImpl({
    required LocalUserDataSource local,
    required RemoteUserDataSource remote,
  })  : _local = local,
        _remote = remote;

  @override
  Future<UserEntity> getRemoteUser() async {
    final Document response = await _remote.getUser();

    final UserEntity user = UserEntity.fromDocument(response);

    return user;
  }

  @override
  Future<UserEntity> getUser() async {
    final UserModel user = await _local.getUser();

    return user;
  }

  @override
  Future<void> setUser({required UserEntity user}) async {
    final UserModel model = UserModel.toModel(user);

    await _local.setUser(user: model);
  }

  @override
  Future<void> removeUser() async {
    await _local.removeUser();
  }
}
