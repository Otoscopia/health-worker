import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalUserDataSource {
  final Isar _isar;

  LocalUserDataSource() : _isar = isar;

  Future<UserModel> getUser() async {
    try {
      final UserModel? response = await _isar.userModels.where().findFirst();

      return response!;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setUser({required UserModel user}) async {
    try {
      // write user collection
      await _isar.writeTxn(() async {
        await _isar.userModels.clear();
        await _isar.userModels.put(user);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> removeUser() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.userModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
