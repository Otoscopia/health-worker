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

    final UserEntity user = UserEntity(
      id: response.$id,
      name: response.data["name"],
      email: response.data["email"],
      role: response.data["role"],
      phone: response.data["phone"],
      workAddress: response.data["workAddress"],
    );

    return user;
  }

  @override
  Future<UserEntity> getUser() async {
    final UserModel user = await _local.getUser();

    return user;
  }

  @override
  Future<void> setUser({required UserEntity user}) async {
    final UserModel model = UserModel(
      id: user.id,
      name: user.name,
      email: user.email,
      phone: user.phone,
      role: user.role,
      workAddress: user.workAddress,
    );

    await _local.setUser(user: model);
  }
}
