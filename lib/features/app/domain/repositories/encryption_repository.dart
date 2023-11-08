abstract class EncryptionRepository {
  // Encrypt data
  String encryptData({required String data});

  // Decrypt data
  String decryptData({required String data});
}
