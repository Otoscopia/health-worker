// ignore_for_file: non_constant_identifier_names

import 'package:floor/floor.dart';
import 'package:otoscopia_health_worker/features/authentication/domain/entity/user_entity.dart';

@Entity(tableName: 'user', primaryKeys: ['id'])
@entity
class UserModel extends UserEntity {
  UserModel({
    required super.uid,
    required super.createdAt,
    required super.updatedAt,
    required super.name,
    required super.registration,
    required super.passwordUpdate,
    required super.email,
    required super.phone,
    required super.accessedAt,
    required super.emailVerification,
    required super.phoneVerification,
    required super.prefs,
    required super.status,
    required super.labels,
  });
}
