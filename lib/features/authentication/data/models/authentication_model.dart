import 'package:floor/floor.dart';

import 'package:health_worker/features/authentication/domain/entity/authentication_entity.dart';

@Entity(tableName: 'auth_status')
@entity
class AuthenticationModel extends AuthenticationEntity {
  @PrimaryKey(autoGenerate: true)
  int id;

  AuthenticationModel({
    required this.id,
    required super.loading,
    required super.error,
    super.authenticated,
    super.signedOut
  });
}
