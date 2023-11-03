import 'package:health_worker/features/features.dart';

class GetScreeningsUseCase {
  final ApplicationRepository repository;

  GetScreeningsUseCase({required this.repository});

  Future<List<ScreeningEntity>> call() async {
    return await repository.getScreenings();
  }
}
