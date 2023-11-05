import 'package:health_worker/features/features.dart';

class AddScreeningRemoteUseCase {
  final ApplicationRepository repository;

  AddScreeningRemoteUseCase({required this.repository});

  Future<void> execute({required ScreeningEntity screening}) async {
    await repository.setScreeningRemote(screening: screening);
  }
}

class AddScreeningLocalUseCase {
  final ApplicationRepository repository;

  AddScreeningLocalUseCase({required this.repository});

  Future<void> execute({required ScreeningEntity screening}) async {
    await repository.setScreeningLocal(screening: screening);
  }
}