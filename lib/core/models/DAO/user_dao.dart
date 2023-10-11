import 'package:floor/floor.dart';

import 'package:health_worker/features/authentication/data/models/user_model.dart';

@dao
abstract class UserDao {
  @insert
  Future<void> insertUser(UserModel user);

  @Query('SELECT * FROM user')
  Future<List<UserModel>> fetchUser();

  @Query('DROP TABLE user')
  Future<void> dropUser();

}
