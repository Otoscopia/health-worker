import 'package:isar/isar.dart';

import 'package:health_worker/features/authentication/exports.dart';

part 'user_model.g.dart';

@collection
@Name("user")
class UserModel extends UserEntity {
  Id id = Isar.autoIncrement;

  UserModel(
      {required super.uid,
      required super.name,
      required super.email,
      required super.phone});
}
