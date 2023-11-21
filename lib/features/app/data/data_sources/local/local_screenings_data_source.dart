import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalScreeningsDataSource {
  final Isar _isar;

  LocalScreeningsDataSource() : _isar = isar;

  Future<List<ScreeningModel>> getScreenings() async {
    try {
      final List<ScreeningModel> response =
          await _isar.screeningModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setScreenings({required List<ScreeningModel> screenings}) async {
    try {
      // write screenings collection
      await _isar.writeTxn(() async {
        // clear doctors collection
        await _isar.screeningModels.clear();

        await _isar.screeningModels.putAll(screenings);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setScreening({required ScreeningModel screenings}) async {
    try {
      // write screenings collection
      await _isar.writeTxn(() async {
        await _isar.screeningModels.put(screenings);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<ScreeningModel?> findScreening({required String id}) async {
    try {
      final ScreeningModel? response = await _isar.screeningModels
          .where()
          .filter()
          .idEqualTo(id, caseSensitive: false)
          .findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> removeScreenings() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.screeningModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
