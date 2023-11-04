
import 'package:encrypt/encrypt.dart';

import 'package:health_worker/core/core.dart';

class EncryptionDataSource {
  final EncryptionService _service;
  final Key key;

  EncryptionDataSource({required this.key}) : _service = EncryptionService(key: key);

  String encryptData({required String data}) {
    final encrypted = _service.encryptData(data);

    return encrypted;
  }

  String decryptData({required String data}) {
    final decrypted = _service.decryptData(data);

    return decrypted;
  }
}