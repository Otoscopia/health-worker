import 'package:health_worker/features/features.dart';

/// An abstract class defining methods to interact with doctor-related data,
/// including retrieval, storage, and removal of doctor entities.
abstract class DoctorsRepository {
  /// Retrieves a list of doctors from a remote data source.
  ///
  /// Returns a list of [UserEntity] representing doctors.
  Future<List<UserEntity>> getRemoteDoctors();

  /// Retrieves a list of doctors from a local data source.
  ///
  /// Returns a list of [UserEntity] representing doctors.
  Future<List<UserEntity>> getLocalDoctors();

  /// Stores a list of doctors in a local data source.
  ///
  /// The provided [doctors] list contains [UserEntity] instances representing
  /// doctors to be stored.
  Future<void> setDoctors({required List<UserEntity> doctors});

  /// Finds a doctor by their unique identifier from a local data source.
  ///
  /// Returns a [UserEntity] representing the found doctor or null if not found.
  Future<UserEntity?> findDoctorLocal({required String id});

  /// Removes all stored doctor entities from the local data source.
  Future<void> removeDoctors();
}
