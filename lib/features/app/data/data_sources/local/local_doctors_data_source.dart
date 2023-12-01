import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

/// A local data source for managing doctor entities stored in Isar database.
class LocalDoctorsDataSource {
  /// The Isar instance used to interact with the local database.
  final Isar _isar;

  /// Constructor for the LocalDoctorsDataSource class.
  ///
  /// Initializes the Isar instance for local data interaction.
  LocalDoctorsDataSource() : _isar = isar;

  /// Retrieves a list of doctor models from the local database.
  ///
  /// Returns a list of [DoctorModel] instances representing doctors.
  Future<List<DoctorModel>> getDoctors() async {
    try {
      final List<DoctorModel> response =
          await _isar.doctorModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Stores a list of doctor models in the local database.
  ///
  /// The provided [doctors] list contains [DoctorModel] instances representing
  /// doctors to be stored.
  Future<void> setDoctors({required List<DoctorModel> doctors}) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.doctorModels.clear();
        await _isar.doctorModels.putAll(doctors);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Finds a doctor by their unique identifier in the local database.
  ///
  /// Returns a [DoctorModel] representing the found doctor or null if not found.
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

  /// Removes all stored doctor entities from the local database.
  Future<void> removeDoctors() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.doctorModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
