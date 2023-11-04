import 'package:health_worker/features/features.dart';

abstract class ApplicationRepository {
  Future<List<AssignmentEntity>> getAssignment();

  Future<List<UserEntity>> getDoctors();

  Future<List<PatientEntity>> getPatients();

  Future<void> setPatient({required PatientEntity patient});

  Future<List<RemarksEntity>> getRemarks();

  Future<List<SchoolEntity>> getSchools();

  Future<List<ScreeningEntity>> getScreenings();

  Future<UserEntity> getUserDocument();

  String encryptData({required String data});

  String decryptData({required String data});
}
