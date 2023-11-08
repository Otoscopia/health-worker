import 'package:health_worker/features/features.dart';

class DoctorsUseCases {
  final DoctorsRepository _repository;

  DoctorsUseCases({required DoctorsRepository repository})
      : _repository = repository;

  // Get doctors from remote database using the doctor repository
  Future<List<UserEntity>> getRemoteDoctors() async {
    return await _repository.getRemoteDoctors();
  }

  // Get doctors from local database using the doctor repository
  Future<List<UserEntity>> getLocalDoctors() async {
    return await _repository.getLocalDoctors();
  }

  // Set doctors to local database using the doctor repository
  Future<void> setDoctors(List<UserEntity> doctors) async {
    return await _repository.setDoctors(doctors: doctors);
  }

  // find doctor from local database using the doctor repository
  Future<UserEntity?> findDoctor(String id) async {
    return await _repository.findDoctorLocal(id: id);
  }
}
