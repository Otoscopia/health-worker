import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/app/data/models/patient_models.dart';
import 'package:health_worker/features/app/domain/entity/patient_entity.dart';
import 'package:health_worker/features/app/functions/encryption.dart';

class PatientNotifier extends StateNotifier<PatientEntity> {
  PatientNotifier()
      : super(PatientEntity(
            fullName: "",
            gender: "",
            birthdate: "",
            schoolName: "",
            schoolID: ""));

  setGender(String gender, bool error) {
    state = PatientEntity(
        fullName: state.fullName,
        gender: gender,
        birthdate: state.birthdate,
        schoolName: state.schoolName,
        schoolID: state.schoolID,
        genderError: error,
        birthdateError: state.genderError);
  }

  setBirthdate(String birthdate, bool error) {
    state = PatientEntity(
        fullName: state.fullName,
        gender: state.gender,
        birthdate: birthdate,
        schoolName: state.schoolName,
        schoolID: state.schoolID,
        genderError: state.genderError,
        birthdateError: error);
  }

  setPatientInformation(String fullName, String gender, String birthdate, String schoolName, String schoolID) async {
    // get user uid from the database
    var user = await database.userDao.fetchUser();

    // read the key from the secure storage
    var storageValue = await storage.read(key: user.first.uid!);

    // only use the first 32 characters
    var key = storageValue!.substring(0, 32);

    final encrypter = encrypt.Encrypter(encrypt.AES(encrypt.Key.fromUtf8(key)));

    // generate uid for each patient
    const Uuid uuuid = Uuid();
    var patientUid = uuuid.v4().toString();

    var fullNameEncrypted = encryptionFunction(fullName, encrypter);
    var genderEncrypted = encryptionFunction(gender, encrypter);
    var birthdateEncrypted = encryptionFunction(birthdate, encrypter);
    var schoolNameEncrypted = encryptionFunction(schoolName, encrypter);
    var schoolIDEncrypted = encryptionFunction(schoolID, encrypter);

    PatientModel patient = PatientModel(
        uid: patientUid,
        fullName: fullNameEncrypted,
        gender: genderEncrypted,
        birthdate: birthdateEncrypted,
        schoolName: schoolNameEncrypted,
        schoolID: schoolIDEncrypted);

    database.patientDao.insertPatient(patient);

    state = PatientEntity(
        fullName: fullName,
        gender: gender,
        birthdate: birthdate,
        schoolName: schoolName,
        schoolID: schoolID);
  }
}

final patientProvider =
    StateNotifierProvider<PatientNotifier, PatientEntity>((ref) {
  return PatientNotifier();
});