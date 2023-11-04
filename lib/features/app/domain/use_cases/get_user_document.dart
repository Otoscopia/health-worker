import 'package:health_worker/features/features.dart';

class GetUserDocumentRemoteUseCase {
  final ApplicationRepository repository;

  GetUserDocumentRemoteUseCase({required this.repository});

  Future<UserEntity> execute() async {
    return await repository.getUserDocumentRemote();
  }
}

class GetUserDocumenLocaltUseCase {
  final ApplicationRepository repository;

  GetUserDocumenLocaltUseCase({required this.repository});

  Future<UserEntity?> execute() async {
    return await repository.getUserLocal();
  }
}
