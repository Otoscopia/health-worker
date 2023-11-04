import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalGetDatabaseUseCase {
  final Isar _isar;

  LocalGetDatabaseUseCase() : _isar = isar;

  Future<List<AssignmentModel>> getAssignment() async {
    try {
      final List<AssignmentModel> response =
          await _isar.assignmentModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<List<DoctorModel>> getDoctors() async {
    try {
      final List<DoctorModel> response =
          await _isar.doctorModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<DoctorModel?> getDoctor({required String id}) async {
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

  Future<List<PatientModel>> getPatients() async {
    try {
      final List<PatientModel> response =
          await _isar.patientModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<PatientModel?> getPatient({required String id}) async {
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

  Future<RemarksModel?> getRemarks({required String id}) async {
    try {
      final RemarksModel? response = await _isar.remarksModels
          .where()
          .filter()
          .idEqualTo(id, caseSensitive: false)
          .findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<List<SchoolModel>> getSchools() async {
    try {
      final List<SchoolModel> response =
          await _isar.schoolModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<List<ScreeningModel>> getScreenings() async {
    try {
      final List<ScreeningModel> response =
          await _isar.screeningModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<ScreeningModel?> getScreening({required String id}) async {
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

  Future<UserModel> getUser() async {
    try {
      final UserModel? response = await _isar.userModels.where().findFirst();

      return response!;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
