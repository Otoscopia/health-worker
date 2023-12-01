/// Abstract class defining the contract for encryption and decryption operations.
///
/// The [EncryptionRepository] class serves as an interface for handling
/// encryption and decryption operations in the application. Concrete
/// implementations should be created to interact with specific data sources
/// for cryptographic operations, such as encryption services or local storage.
///
/// Example usage:
/// ```dart
/// import 'encryption_repository.dart';
/// import 'encryption_service_repository_impl.dart';
/// import 'encryption_data_source.dart';
///
/// // Create an instance of EncryptionDataSource.
/// final encryptionDataSource = EncryptionDataSource(key: yourCryptographicKey);
///
/// // Create an instance of EncryptionRepositoryImpl with the data source.
/// final encryptionRepository = EncryptionRepositoryImpl(encryption: encryptionDataSource);
///
/// // Encrypt sensitive data.
/// final encryptedData = encryptionRepository.encryptData(data: 'sensitive_information');
///
/// // Decrypt previously encrypted data.
/// final decryptedData = encryptionRepository.decryptData(data: encryptedData);
/// ```
abstract class EncryptionRepository {
  /// Encrypts the provided data.
  ///
  /// Implementing classes should define the logic to securely encrypt
  /// sensitive data and return the encrypted result.
  String encryptData({required String data});

  /// Decrypts the provided encrypted data.
  ///
  /// Implementing classes should define the logic to securely decrypt
  /// previously encrypted data and return the original information.
  String decryptData({required String data});
}
