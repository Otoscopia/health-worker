import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';

part 'user_model.g.dart';

@collection
@Name("users")
class UserModel extends UserEntity {
  Id isar = Isar.autoIncrement;

  UserModel(
    this.isar,
      {required super.id,
      required super.name,
      required super.email,
      required super.phone,
      required super.role,
      required super.workAddress});
}
