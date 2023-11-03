import 'package:health_worker/features/features.dart';

class GetUserDocumentUseCase {
  final ApplicationRepository repository;

  GetUserDocumentUseCase({required this.repository});

  Future<UserEntity> call() async {
    return await repository.getUserDocument();
  }
}
