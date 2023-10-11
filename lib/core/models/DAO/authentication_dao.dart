import 'package:floor/floor.dart';

import 'package:health_worker/features/authentication/data/models/authentication_model.dart';

@dao
abstract class AuthenticationDao {
  @insert
  Future<void> insertAuthStatus(AuthenticationModel authStatus);

  @Query('SELECT * FROM auth_status')
  Future<List<AuthenticationModel>> fetchAuthStatus();

  @Query('TRUNCATE TABLE auth_status')
  Future<void> dropAuthStatus();
}
