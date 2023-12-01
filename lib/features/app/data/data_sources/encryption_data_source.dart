
import 'package:encrypt/encrypt.dart';

import 'package:health_worker/core/core.dart';

/// Handles data encryption and decryption operations using a specified key.
///
/// The [EncryptionDataSource] class utilizes an [EncryptionService] to perform
/// encryption and decryption of sensitive data. It takes a cryptographic key
/// during instantiation to ensure secure operations.
///
/// Example usage:
/// ```dart
/// import 'encryption_data_source.dart';
///
/// //* Create a cryptographic key.
/// final key = Key.fromBase64('base64_encoded_key_here');
///
/// //* Create an instance of EncryptionDataSource with the key.
/// final encryptionDataSource = EncryptionDataSource(key: key);
///
/// //* Encrypt sensitive data.
/// final encryptedData = encryptionDataSource.encryptData(data: 'sensitive_information');
///
/// //* Decrypt previously encrypted data.
/// final decryptedData = encryptionDataSource.decryptData(data: encryptedData);
/// ```
class EncryptionDataSource {
  /// Encryption service for performing cryptographic operations.
  final EncryptionService _service;

  /// Cryptographic key used for encryption and decryption.
  final Key key;

  /// Constructor for the EncryptionDataSource class.
  EncryptionDataSource({required this.key}) : _service = EncryptionService(key: key);

  /// Encrypts the provided data using the configured key.
  ///
  /// This method uses the associated [EncryptionService] to encrypt sensitive
  /// data, ensuring the security and privacy of the information.
  String encryptData({required String data}) {
    final encrypted = _service.encryptData(data);

    return encrypted;
  }

  /// Decrypts the provided data using the configured key.
  ///
  /// This method uses the associated [EncryptionService] to decrypt previously
  /// encrypted data, restoring the original information.
  String decryptData({required String data}) {
    final decrypted = _service.decryptData(data);

    return decrypted;
  }
}
