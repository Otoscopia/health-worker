import 'package:health_worker/features/features.dart';

class SchoolsUseCase {
  final SchoolsRepository _repository;

  SchoolsUseCase({required SchoolsRepository repository})
      : _repository = repository;

  // Get schools from remote database using the school repository
  Future<List<SchoolEntity>> getRemoteSchools() async {
    return await _repository.getRemoteSchools();
  }

  // Get schools from local database using the school repository
  Future<List<SchoolEntity>> getLocalSchools() async {
    return await _repository.getLocalSchools();
  }

  // Set schools to local database using the school repository
  Future<void> setSchools(List<SchoolEntity> schools) async {
    return await _repository.setSchools(schools: schools);
  }

  // find school from local database using the school repository
  Future<SchoolEntity?> findSchool(String id) async {
    return await _repository.findSchool(id: id);
  }

  // Remove schools from local database using the school repository
  Future<void> removeSchools() async {
    return await _repository.removeSchools();
  }
}
