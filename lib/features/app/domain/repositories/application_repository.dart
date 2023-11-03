import 'package:health_worker/features/features.dart';

abstract class ApplicationRepository {
  Future<List<AssignmentEntity>> getAssignment();

  Future<List<UserEntity>> getDoctors();

  Future<List<PatientEntity>> getPatients();

  Future<List<RemarksEntity>> getRemarks();

  Future<List<SchoolEntity>> getSchools();

  Future<List<ScreeningEntity>> getScreenings();

  Future<UserEntity> getUserDocument();
}
