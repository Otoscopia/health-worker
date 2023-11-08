import 'package:health_worker/features/features.dart';

class EncryptionUseCases {
  final EncryptionRepository _repository;

  EncryptionUseCases({required EncryptionRepository repository})
      : _repository = repository;

  // Encrypt data using encryption repository
  String encryptData({required String data}) {
    return _repository.encryptData(data: data);
  }

  // Decrypt data using encryption repository
  String decryptData({required String data}) {
    return _repository.decryptData(data: data);
  }
}
