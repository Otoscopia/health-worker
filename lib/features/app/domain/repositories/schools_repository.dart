import 'package:health_worker/features/features.dart';

abstract class SchoolsRepository {
    // Get schools from remote database
  Future<List<SchoolEntity>> getRemoteSchools();

  // Get schools from local database
  Future<List<SchoolEntity>> getLocalSchools();

  // Set schools to local database
  Future<void> setSchools({required List<SchoolEntity> schools});

  // Find school from local database
  Future<SchoolEntity?> findSchool({required String id});
}