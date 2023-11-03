import 'package:health_worker/features/features.dart';

class GetDoctorsUseCase {
  final ApplicationRepository repository;

  GetDoctorsUseCase({required this.repository});

  Future<List<UserEntity>> execute() async {
    List<UserEntity> doctors = await repository.getDoctors();
    return doctors;
  }
}
