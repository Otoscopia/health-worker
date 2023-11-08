import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalSchoolsDataSource {
  final Isar _isar;

  LocalSchoolsDataSource() : _isar = isar;

  Future<List<SchoolModel>> getSchools() async {
    try {
      final List<SchoolModel> response =
          await _isar.schoolModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setSchools({required List<SchoolModel> schools}) async {
    try {
      // write schools collection
      await _isar.writeTxn(() async {
        await _isar.schoolModels.clear();
        await _isar.schoolModels.putAll(schools);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<SchoolModel?> findSchool({required String id}) async {
    try {
      final SchoolModel? response =
          await _isar.schoolModels.where().filter().idEqualTo(id).findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
