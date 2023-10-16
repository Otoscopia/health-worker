import 'dart:convert';
import 'dart:io';

import 'package:encrypt/encrypt.dart';
import 'package:health_worker/dependency_injection.dart';

class EncryptionClass {
  encryptData(String data, Encrypter encrypter) {
    final iv = IV.fromLength(16);

    final encrypted = encrypter.encrypt(data, iv: iv);

    final combined = iv.bytes + encrypted.bytes;

    return base64.encode(combined);
  }

  decryptData(String data, Encrypter encrypter) {
    final combinedDec = base64.decode(data);

    final ivBytes = combinedDec.sublist(0, 16);

    final cipherBytes = combinedDec.sublist(16);

    final ivDec = IV(ivBytes);

    final cipherText = Encrypted(cipherBytes);

    final decrypted = encrypter.decrypt(cipherText, iv: ivDec);

    return decrypted;
  }

  encryptFiles(File file, Encrypter encrypter, String fileName, String savePath) async {
    final bytes = await file.readAsBytes();

    final iv = IV.fromLength(16);

    final encrypted = encrypter.encryptBytes(bytes, iv: iv);

    final combined = iv.bytes + encrypted.bytes;

    final newPath = File("$savePath\\${fileName.split(".")[0]}.aes");

    await newPath.writeAsBytes(combined);

    await file.delete();
  }

  decryptFiles(File file, Encrypter encrypter, String path) async {
    final combinedDec = await file.readAsBytes();

    final ivBytes = combinedDec.sublist(0, 16);

    final cipherBytes = combinedDec.sublist(16);

    final ivDec = IV(ivBytes);

    final cipherText = Encrypted(cipherBytes);

    final decrypted = encrypter.decryptBytes(cipherText, iv: ivDec);

    final newPath = File("$applicationPath\\$path");

    await newPath.writeAsBytes(decrypted);
  }
}

// TO ENCRYPT
// var fullNameEncrypted = encryptionFunction(fullName);
// var genderEncrypted = encryptionFunction(gender);
// var birthdateEncrypted = encryptionFunction(birthdate);
// var schoolNameEncrypted = encryptionFunction(schoolName);
// var schoolIDEncrypted = encryptionFunction(schoolID);

// TO DECRYPT
// var fullNameDecrypted = decryptionFunction(fullNameEncrypted);
// var genderDecrypted = decryptionFunction(genderEncrypted);
// var birthdateDecrypted = decryptionFunction(birthdateEncrypted);
// var schoolNameDecrypted = decryptionFunction(schoolNameEncrypted);
// var schoolIDDecrypted = decryptionFunction(schoolIDEncrypted);
