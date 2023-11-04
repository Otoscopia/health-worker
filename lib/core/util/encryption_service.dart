import 'dart:convert';

import 'package:encrypt/encrypt.dart';

class EncryptionService {
  final Key key;
  final Encrypter _encrypter;

  EncryptionService({required this.key}) : _encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  String encryptData(String data) {
    final iv = IV.fromLength(16);

    final encrypted = _encrypter.encrypt(data, iv: iv);

    final combined = iv.bytes + encrypted.bytes;

    return base64.encode(combined);
  }

  String decryptData(String data) {
    final combinedDec = base64.decode(data);

    final ivBytes = combinedDec.sublist(0, 16);

    final cipherBytes = combinedDec.sublist(16);

    final ivDec = IV(ivBytes);

    final cipherText = Encrypted(cipherBytes);

    final decrypted = _encrypter.decrypt(cipherText, iv: ivDec);

    return decrypted;
  }
}
