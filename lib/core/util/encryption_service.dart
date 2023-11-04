import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/export.dart';

class EncryptionService {
  // Create a CBCBlockCipher with an AESEngine and initialize it with encryption mode.
  final CBCBlockCipher _cipher = CBCBlockCipher(AESEngine());

  EncryptionService();

  Uint8List encrypt({required Uint8List key, required Uint8List iv, required Uint8List data}) {
    // Check the key size, IV size, and data size to ensure they are as expected.
    assert([256].contains(key.length * 8));
    assert(128 == iv.length * 8);
    assert(128 == data.length * 8);

    // Create a KeyParameter from the key.
    final KeyParameter keyParams = KeyParameter(key);

    // Create ParametersWithIV, which combines the key and IV (Initialization Vector).
    final ParametersWithIV params = ParametersWithIV(keyParams, iv);

    // Initialize the cipher with the parameters and set it to encryption mode.
    _cipher.init(true, params);

    // Create a Uint8List to hold the encrypted data.
    final Uint8List cipherText = Uint8List(data.length);

    // Process the entire array of data.
    var offset = 0;
    while (offset < data.length) {
      // Process each block of data using CBC encryption and store the result in cipherText.
      offset += _cipher.processBlock(data, offset, cipherText, offset);
    }

    // Assert that the entire data array has been processed.
    assert(offset == data.length);

    // Return the encrypted cipher text.
    return cipherText;
  }

  Uint8List decrypt({required Uint8List key, required Uint8List iv, required Uint8List data}) {
    // Check the key size, IV size, and data size to ensure they are as expected.
    assert([128, 196, 256].contains(key.length * 8));
    assert(128 == iv.length * 8);
    assert(128 == data.length * 8);

    // Create a KeyParameter from the key.
    final KeyParameter keyParams = KeyParameter(key);

    // Create ParametersWithIV, which combines the key and IV (Initialization Vector).
    final ParametersWithIV params = ParametersWithIV(keyParams, iv);

    // Initialize the cipher with the parameters and set it to encryption mode.
    _cipher.init(false, params);

    // Create a Uint8List to hold the decrypted data.
    final cipherData = Uint8List(data.length);

    // Process the entire array of data.
    var offset = 0;
    while (offset < data.length) {
      // Process each block of data using CBC decryption and store the result in cipherData.
      offset += _cipher.processBlock(data, offset, cipherData, offset);
    }

    // Assert that the entire data array has been processed.
    assert(offset == data.length);

    // Return the decrypted cipher data.
    return cipherData;
  }

  // Generate a random 128-bit (16-byte) Initialization Vector.
  Uint8List generateRandomIV(int length) {
    final Random random = Random.secure();
    final Uint8List iv = Uint8List.fromList(List<int>.generate(length, (index) => random.nextInt(256)));
    return iv;
  }
}
