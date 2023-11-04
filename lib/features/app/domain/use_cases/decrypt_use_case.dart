import 'package:health_worker/features/features.dart';

class DecrpytUseCase {
  final ApplicationRepository repository;

  DecrpytUseCase({required this.repository});

  String execute({required String data}) {
    String decryptedData = repository.decryptData(data: data);
    return decryptedData;
  }
}