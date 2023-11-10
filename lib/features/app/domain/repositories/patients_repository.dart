import 'package:health_worker/features/features.dart';

abstract class PatientsRepository {
  // Get patients from remote database
  Future<List<PatientEntity>> getRemotePatients();

  // Get patients from local database
  Future<List<PatientEntity>> getLocalPatients();

  // Set patients to local database
  Future<void> setPatients({required List<PatientEntity> patients});

  // Set patient to local database
  Future<void> setLocalPatient({required PatientEntity patient});

  // Set patient to remote database
  Future<void> setRemotePatient({required PatientEntity patient});

  // Get patient from local database
  Future<PatientEntity?> findPatient({required String id});

  // Remove patients from local database
  Future<void> removePatients();
}
