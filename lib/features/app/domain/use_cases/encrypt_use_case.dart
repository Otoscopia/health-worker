import 'package:health_worker/features/features.dart';

class EncryptUseCase {
  final ApplicationRepository repository;

  EncryptUseCase({required this.repository});

  String execute({required String data}) {
    String encryptedData = repository.encryptData(data: data);
    return encryptedData;
  }
}
