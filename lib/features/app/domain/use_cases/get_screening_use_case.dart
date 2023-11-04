import 'package:health_worker/features/features.dart';

class GetScreeningsRemoteUseCase {
  final ApplicationRepository repository;

  GetScreeningsRemoteUseCase({required this.repository});

  Future<List<ScreeningEntity>> execute() async {
    return await repository.getScreeningsRemote();
  }
}

class GetScreeningsLocalUseCase {
  final ApplicationRepository repository;

  GetScreeningsLocalUseCase({required this.repository});

  Future<List<ScreeningEntity>> execute() async {
    return await repository.getScreeningsLocal();
  }
}
