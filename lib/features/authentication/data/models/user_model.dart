import 'package:floor/floor.dart';

import 'package:health_worker/features/authentication/domain/entity/user_entity.dart';

@Entity(tableName: 'user')
@entity
class UserModel extends UserEntity {
  @PrimaryKey(autoGenerate: true)
  int id;

  UserModel({
    required this.id,
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
