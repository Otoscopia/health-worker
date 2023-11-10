import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalDoctorsDataSource {
  final Isar _isar;

  LocalDoctorsDataSource() : _isar = isar;

  // Get doctors from isar database
  Future<List<DoctorModel>> getDoctors() async {
    try {
      final List<DoctorModel> response =
          await _isar.doctorModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Set doctors to isar database
  Future<void> setDoctors({required List<DoctorModel> doctors}) async {
    try {
      await _isar.writeTxn(() async {
        // clear doctors collection
        await _isar.doctorModels.clear();

        // write doctors collection
        await _isar.doctorModels.putAll(doctors);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Find doctor from isar database
  Future<DoctorModel?> findDoctor({required String id}) async {
    try {
      final DoctorModel? response = await _isar.doctorModels
          .where()
          .filter()
          .idEqualTo(id, caseSensitive: false)
          .findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Remove doctors from isar database
  Future<void> removeDoctors() async {
    try {
      await _isar.writeTxn(() async {
        // clear doctors collection
        await _isar.doctorModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
