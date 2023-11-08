import 'package:health_worker/features/features.dart';

abstract class DoctorsRepository {
  // Get doctors from remote database
  Future<List<UserEntity>> getRemoteDoctors();

  // Get doctors from local database
  Future<List<UserEntity>> getLocalDoctors();

  // Set doctors to local database
  Future<void> setDoctors({required List<UserEntity> doctors});

  // Find doctor from local database
  Future<UserEntity?> findDoctorLocal({required String id});
}
