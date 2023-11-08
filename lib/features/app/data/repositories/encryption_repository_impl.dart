import 'package:health_worker/features/features.dart';

class EncryptionRepositoryImpl implements EncryptionRepository {
  final EncryptionDataSource _encryption;

  EncryptionRepositoryImpl({required EncryptionDataSource encryption})
      : _encryption = encryption;

  // Decrypt data using encryption data source
  @override
  String decryptData({required String data}) {
    final String decryptedData = _encryption.decryptData(data: data);

    return decryptedData;
  }

  // Encrypt data using encryption data source
  @override
  String encryptData({required String data}) {
    final String encryptData = _encryption.encryptData(data: data);

    return encryptData;
  }
}
