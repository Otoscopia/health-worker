import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'user_model.g.dart';

@collection
@Name("user")
class UserModel extends UserEntity {
  Id isar = Isar.autoIncrement;

  UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.role,
    required super.workAddress,
  });

  factory UserModel.toModel(UserEntity user) {
    return UserModel(
      id: user.id,
      name: user.name,
      email: user.email,
      phone: user.phone,
      role: user.role,
      workAddress: user.workAddress,
    );
  }
}
