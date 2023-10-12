import 'dart:convert';
import 'dart:io';

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/foundation.dart';

encryptionFunction(String data, encrypt.Encrypter encrypter) {
  final iv = encrypt.IV.fromLength(16);

  final encrypted = encrypter.encrypt(data, iv: iv);

  final combined = iv.bytes + encrypted.bytes;

  return base64.encode(combined);
}

encryptFileFunction(File file, encrypt.Encrypter encrypter, String path) async {
  final bytes = await file.readAsBytes();

  final iv = encrypt.IV.fromLength(16);

  final encrypted = encrypter.encryptBytes(bytes, iv: iv);

  final combined = iv.bytes + encrypted.bytes;

  final newPath = File("${file.parent.path}\\${path.split(".")[0]}.aes");

  await newPath.writeAsBytes(combined);

  await file.delete();
}

decryptFileFunction(File file, encrypt.Encrypter encrypter, String path) async {
  final combinedDec = await file.readAsBytes();

  final ivBytes = combinedDec.sublist(0, 16);

  final cipherBytes = combinedDec.sublist(16);

  final ivDec = encrypt.IV(ivBytes);

  final cipherText = encrypt.Encrypted(cipherBytes);

  final decrypted = encrypter.decryptBytes(cipherText, iv: ivDec);

  final newPath = File("${file.parent.path}\\$path");

  await newPath.writeAsBytes(decrypted);
}

decryptionFunction(String data, encrypt.Encrypter encrypter) {
  final combinedDec = base64.decode(data);

  final ivBytes = combinedDec.sublist(0, 16);

  final cipherBytes = combinedDec.sublist(16);

  final ivDec = encrypt.IV(ivBytes);

  final cipherText = encrypt.Encrypted(cipherBytes);

  final decrypted = encrypter.decrypt(cipherText, iv: ivDec);

  return decrypted;
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
