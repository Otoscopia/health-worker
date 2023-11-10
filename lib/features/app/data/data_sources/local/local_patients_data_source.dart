import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalPatientsDataSource {
  final Isar _isar;

  LocalPatientsDataSource() : _isar = isar;

  // Get patients from isar database
  Future<List<PatientModel>> getPatients() async {
    try {
      final List<PatientModel> response =
          await _isar.patientModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Set patients to isar database
  Future<void> setPatients({required List<PatientModel> patients}) async {
    try {
      // write patients collection
      await _isar.writeTxn(() async {
        await _isar.patientModels.putAll(patients);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Set patient to isar database
  Future<void> setPatient({required PatientModel patient}) async {
    try {
      // write patients collection
      await _isar.writeTxn(() async {
        await _isar.patientModels.put(patient);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Find patient from isar database
  Future<PatientModel?> findPatient({required String id}) async {
    try {
      final PatientModel? response = await _isar.patientModels
          .where()
          .filter()
          .idEqualTo(id, caseSensitive: false)
          .findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Remove patients from isar database
  Future<void> removePatients() async {
    try {
      await _isar.writeTxn(() async {
        // clear patients collection
        await _isar.patientModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
