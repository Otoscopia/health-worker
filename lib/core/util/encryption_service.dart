import 'dart:convert';

import 'package:encrypt/encrypt.dart';

/// Provides encryption and decryption services using the AES algorithm.
///
/// The [EncryptionService] class utilizes the Dart `encrypt` package to
/// perform AES encryption and decryption operations. It requires a cryptographic
/// key for initialization and provides methods to encrypt and decrypt data
/// securely.
///
/// Example usage:
/// ```dart
/// import 'encryption_service.dart';
///
/// //* Create a cryptographic key.
/// final key = Key.fromBase64('base64_encoded_key_here');
///
/// //* Create an instance of EncryptionService with the key.
/// final encryptionService = EncryptionService(key: key);
///
/// //* Encrypt sensitive data.
/// final encryptedData = encryptionService.encryptData('sensitive_information');
///
/// //* Decrypt previously encrypted data.
/// final decryptedData = encryptionService.decryptData(encryptedData);
/// ```
class EncryptionService {
  /// Cryptographic key used for encryption and decryption.
  final Key key;

  /// Encrypter instance for performing AES encryption and decryption.
  final Encrypter _encrypter;

  /// Constructor for the EncryptionService class.
  EncryptionService({required this.key}) : _encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  /// Encrypts the provided data using the configured key and AES algorithm.
  ///
  /// This method generates a random initialization vector (IV) for each encryption,
  /// ensuring the security of the encrypted data.
  String encryptData(String data) {
    final iv = IV.fromLength(16);

    final encrypted = _encrypter.encrypt(data, iv: iv);

    final combined = iv.bytes + encrypted.bytes;

    return base64.encode(combined);
  }

  /// Decrypts the provided data using the configured key and AES algorithm.
  ///
  /// This method extracts the initialization vector (IV) and cipher text from
  /// the combined data, then decrypts it to retrieve the original information.
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
