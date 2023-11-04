import 'package:health_worker/features/features.dart';

class GetRemoteDoctorsUseCase {
  final ApplicationRepository repository;

  GetRemoteDoctorsUseCase({required this.repository});

  Future<List<UserEntity>> execute() async {
    List<UserEntity> doctors = await repository.getDoctorsRemote();
    return doctors;
  }
}

class GetLocalDoctorsUseCase {
  final ApplicationRepository repository;

  GetLocalDoctorsUseCase({required this.repository});

  Future<List<UserEntity>> execute() async {
    List<UserEntity> doctors = await repository.getDoctorsLocal();
    return doctors;
  }
}
