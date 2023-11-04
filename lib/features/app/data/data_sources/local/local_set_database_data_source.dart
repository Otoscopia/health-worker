import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalSetDatabaseUseCase {
  final Isar _isar;

  LocalSetDatabaseUseCase() : _isar = isar;

  Future<void> setAssignment(List<AssignmentModel> assignments) async {
    try {
      // write assignment collection
      await _isar.writeTxn(() async {
        await _isar.assignmentModels.clear();
        await _isar.assignmentModels.putAll(assignments);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setDoctors(List<DoctorModel> doctors) async {
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

  Future<void> setPatient({required PatientModel patientModel}) async {
    try {
      // write patients collection
      await _isar.writeTxn(() async {
        await _isar.patientModels.put(patientModel);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setRemarks({required RemarksModel remarksModel}) async {
    try {
      // write remarks collection
      await _isar.writeTxn(() async {
        await _isar.remarksModels.put(remarksModel);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setSchools(List<SchoolModel> schools) async {
    try {
      // write schools collection
      await _isar.writeTxn(() async {
        await _isar.schoolModels.putAll(schools);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setScreenings({required List<ScreeningModel> screenings}) async {
    try {
      // write screenings collection
      await _isar.writeTxn(() async {
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

  Future<void> setUser({required UserModel userModel}) async {
    try {
      // write user collection
      await _isar.writeTxn(() async {
        await _isar.userModels.put(userModel);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
