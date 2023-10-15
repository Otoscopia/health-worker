import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';
import 'package:isar/isar.dart';

part 'user_model.g.dart';

@collection
class UserModel extends UserEntity {
  Id id = Isar.autoIncrement;

  UserModel(
      {required super.uid,
      required super.name,
      required super.email,
      required super.phone});
}
