import 'package:health_worker/features/features.dart';

class DecryptUseCase {
  final ApplicationRepository repository;

  DecryptUseCase({required this.repository});

  String execute({required String data}) {
    String decryptedData = repository.decryptData(data: data);
    return decryptedData;
  }
}
