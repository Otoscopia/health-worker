import 'package:health_worker/features/features.dart';

/// Implementation of the [EncryptionRepository] interface.
///
/// The [EncryptionRepositoryImpl] class implements the methods defined in
/// the [EncryptionRepository] interface. It acts as an intermediary between
/// the application's business logic and the data source for encryption and
/// decryption operations. This specific implementation uses an [EncryptionDataSource]
/// to perform cryptographic operations securely.
///
/// Example usage:
/// ```dart
/// import 'encryption_service_repository_impl.dart';
/// import 'encryption_data_source.dart';
///
/// //* Create an instance of EncryptionDataSource.
/// final encryptionDataSource = EncryptionDataSource(key: yourCryptographicKey);
///
/// //* Create an instance of EncryptionRepositoryImpl with the data source.
/// final encryptionRepository = EncryptionRepositoryImpl(encryption: encryptionDataSource);
///
/// //* Encrypt sensitive data.
/// final encryptedData = encryptionRepository.encryptData(data: 'sensitive_information');
///
/// //* Decrypt previously encrypted data.
/// final decryptedData = encryptionRepository.decryptData(data: encryptedData);
/// ```
class EncryptionRepositoryImpl implements EncryptionRepository {
  /// Data source for handling encryption and decryption operations.
  final EncryptionDataSource _encryption;

  /// Constructor for the EncryptionRepositoryImpl class.
  EncryptionRepositoryImpl({required EncryptionDataSource encryption})
      : _encryption = encryption;

  /// Decrypts the provided encrypted data using the associated data source.
  ///
  /// This method delegates the decryption operation to the [EncryptionDataSource],
  /// ensuring the secure retrieval of the original information.
  @override
  String decryptData({required String data}) {
    final String decryptedData = _encryption.decryptData(data: data);

    return decryptedData;
  }

  /// Encrypts the provided data using the associated data source.
  ///
  /// This method delegates the encryption operation to the [EncryptionDataSource],
  /// ensuring the secure storage or transmission of sensitive information.
  @override
  String encryptData({required String data}) {
    final String encryptData = _encryption.encryptData(data: data);

    return encryptData;
  }
}
