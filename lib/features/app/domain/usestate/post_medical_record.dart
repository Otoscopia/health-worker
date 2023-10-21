import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:encrypt/encrypt.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/app/domain/provider/refresh_table_provider.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';
import 'package:isar/isar.dart';

Future<void> uploadMedicalRecord(WidgetRef ref) async {
  final userCollection = isar.userModels;
  final user = await userCollection.where().anyId().findFirst();

  var storageValue = await storage.read(key: user!.uid);
  var key = storageValue!.substring(0, 32);
  final encrypter = Encrypter(AES(Key.fromUtf8(key)));

  final patientUID = ref.read(patientProvider).uid;
  final screeningUID = ref.read(screeningProvider).uid;

  final path = "${appDir.parent.path}\\$patientUID";

  ScreeningModel screened = encryptScreeningDetail(ref, encrypter, patientUID, user.uid);
  PatientModel patient = await encryptedPatient(ref, encrypter, patientUID, user.uid, path);

  final Directory dir = Directory(path);
  List<FileSystemEntity> leftFiles = await dir.list().where((event) => event.path.contains("left-") && event.path.endsWith("jpeg")).toList();
  List<FileSystemEntity> rightFiles = await dir.list().where((event) => event.path.contains("right-") && event.path.endsWith("jpeg")).toList();

  await Future.wait(leftFiles.map((file) async {
    await encrypt(file, screeningUID, encrypter, path, patientUID);
  }));

  await Future.wait(rightFiles.map((file) async {
    await encrypt(file, screeningUID, encrypter, path, patientUID);
  }));

  await isar.writeTxn(() async {
    await isar.patientModels.put(patient);
    await isar.screeningModels.put(screened);
  });

  await setStatetoEmpty(ref);

  bool value = ref.read(refreshProvider);
  ref.read(refreshProvider.notifier).setState(!value);

  if (ref.read(applicationStateProvider).connected) {
    uplloadToDB(ref, patient, screened);
  }
}

var id = [];

Future<void> encrypt(FileSystemEntity file, String screeningUID, Encrypter encrypter, String path, String patientUID) async {
  
  String fileName = file.path.split("\\").last;
  String prefix = fileName.split("-").first;
  String capturedDate = fileName.split("_").sublist(1).join("-");
  String name = "$prefix-$screeningUID-$capturedDate";
  await EncryptionClass().encryptFiles(File(file.path), encrypter, name, path);
  String encryptedFile = "${file.parent.path}\\${name.split(".").first}.aes";
  var unique = ID.unique();
  await cloud.createFile(bucketId: Env.appwriteScreeningStorage, fileId: unique, file: InputFile.fromPath(path: encryptedFile));
  id.add(unique);
}

Future<void> setStatetoEmpty(WidgetRef ref) async {
  await ref.read(fullnameProvider.notifier).setFullname("");
  await ref.read(genderProvider.notifier).setGender(3);
  await ref.read(birthdateProvider.notifier).setBirthdate(DateTime.now());
  await ref.read(contactNumberProvider.notifier).setContactNumber("");
  await ref.read(schoolNameProvider.notifier).setSchoolName("");
  await ref.read(schoolIdProvider.notifier).setSchoolId("");
  await ref.read(historyOfIllnessProvider.notifier).setState("");
  await ref.read(healthWorkerCommentProvider.notifier).setState("");
  await ref.read(frameOfInterestCommentProvider.notifier).setState("");
  await ref.read(temperaturenessProvider.notifier).setState("");
  await ref.read(bloodPressureProvider.notifier).setState("");
  await ref.read(heightProvider.notifier).setState("");
  await ref.read(weightProvider.notifier).setState("");
  await ref.read(similarConditionProvider.notifier).setState(3);
  await ref.read(cheifComplainProvider.notifier).setStatetoEmpty();
  await ref.read(otherComplainProvider.notifier).setState("");
  await ref.read(haveAllergiesProvider.notifier).setState(3);
  await ref.read(undergoSurgeryProvider.notifier).setState(3);
  await ref.read(takingMedicationProvider.notifier).setState(3);
  await ref.read(medicationProvider.notifier).setState("");
}

ScreeningModel encryptScreeningDetail(WidgetRef ref, Encrypter encrypter, String patientUID, String createdBy) {
  final historyOfIllness = ref.read(screeningProvider).historyOfIllness;
  final healthWorkerComment = ref.read(screeningProvider).healthWorkerComment;
  final frameOfInterest = ref.read(screeningProvider).frameOfInterest;
  final temperatureValue = ref.read(screeningProvider).temperature;
  final bloodPressure = ref.read(screeningProvider).bloodPressure;
  final heightValue = ref.read(screeningProvider).height;
  final weightValue = ref.read(screeningProvider).weight;
  final hasSimilarConditionValue = ref.read(screeningProvider).hasSimilarCondition;
  final cheifComplains = ref.read(screeningProvider).cheifComplain;
  final hasAllergiesValue = ref.read(screeningProvider).patientUndergoSurgery;
  final patientUndergoSurgeryValue = ref.read(screeningProvider).hasAllergies;
  final patientTakingMedicationValue = ref.read(screeningProvider).patientTakingMedication;
  final otherComplains = ref.read(screeningProvider).chiefComplainMessage;
  final medicationComment = ref.read(screeningProvider).patientTakingMedicationMessage;

  ScreeningModel model = ScreeningModel(
    screenedAt: DateTime.now(),
    uid: uuid.v4().toString(),
    historyOfIllness: EncryptionClass().encryptData(historyOfIllness, encrypter),
    healthWorkerComment: EncryptionClass().encryptData(healthWorkerComment, encrypter),
    frameOfInterest: EncryptionClass().encryptData(frameOfInterest, encrypter),
    temperature: EncryptionClass().encryptData(temperatureValue, encrypter),
    bloodPressure: EncryptionClass().encryptData(bloodPressure, encrypter),
    height: EncryptionClass().encryptData(heightValue, encrypter),
    weight: EncryptionClass().encryptData(weightValue, encrypter),
    hasSimilarCondition: EncryptionClass() .encryptData(hasSimilarConditionValue.toString(), encrypter),
    cheifComplain: EncryptionClass().encryptData(cheifComplains.toString(), encrypter),
    patientUndergoSurgery: EncryptionClass().encryptData(patientUndergoSurgeryValue, encrypter),
    hasAllergies: EncryptionClass().encryptData(hasAllergiesValue, encrypter),
    patientTakingMedication: EncryptionClass().encryptData(patientTakingMedicationValue, encrypter),
    chiefComplainMessage: otherComplains != null && otherComplains.isNotEmpty ? EncryptionClass().encryptData(otherComplains, encrypter) : medicationComment,
    patientTakingMedicationMessage: medicationComment != null && medicationComment.isNotEmpty ? EncryptionClass().encryptData(medicationComment, encrypter) : medicationComment,
    status: 'Pending',
    owner: patientUID,
    createdBy: createdBy,
  );

  return model;
}

Future<PatientModel> encryptedPatient(WidgetRef ref, Encrypter encrypter, String patientUID, String createdBy, String filepath) async {
  final patient = EncryptionClass().encryptData(ref.read(patientProvider).fullName, encrypter);
  final gender = EncryptionClass().encryptData(ref.read(patientProvider).gender, encrypter);
  final birthday = EncryptionClass().encryptData(ref.read(patientProvider).birthdate, encrypter);
  final contactNumber = EncryptionClass().encryptData(ref.read(patientProvider).contactNumber, encrypter);
  final schoolName = EncryptionClass().encryptData(ref.read(patientProvider).schoolName, encrypter);
  final schoolId = EncryptionClass().encryptData(ref.read(patientProvider).schoolID, encrypter);

  await cloud.createFile(
      bucketId: Env.appwriteAvatarStorage,
      fileId: patientUID,
      file: InputFile.fromPath(path: "$filepath\\$patientUID.jpeg"));

  PatientModel patientModel = PatientModel(
      uid: patientUID,
      fullName: patient,
      gender: gender,
      birthdate: birthday,
      contactNumber: contactNumber,
      schoolName: schoolName,
      schoolID: schoolId,
      avatar: '',
      createdBy: createdBy)
    ..createdAt = DateTime.now();

  return patientModel;
}

uplloadToDB(WidgetRef ref, PatientModel patient, ScreeningModel screening) async {
  String user = ref.read(userProvider).uid;
  await database.createDocument(
    databaseId: Env.appwriteDatabaseID,
    collectionId: Env.appwritePatientCollection,
    documentId: patient.uid,
    data: {
      "fullname": patient.fullName,
      "gender": patient.gender,
      "birthdate": patient.birthdate,
      "contact_number": patient.contactNumber,
      "school_id": patient.schoolID,
      // "schools":
      "nurse": user,
      "created_at": DateTime.now().toIso8601String(),
    },
  );

  await database.createDocument(databaseId: Env.appwriteDatabaseID, collectionId: Env.appwriteScreeningCollection, documentId: ID.unique(), data: {
    "id": screening.uid,
    "patients": patient.uid,
    "nurse": user,
    "created_at": DateTime.now().toIso8601String(),
    "history_of_illness": screening.historyOfIllness,
    "health_worker_comment": screening.healthWorkerComment,
    "frame_of_interest": screening.frameOfInterest,
    "temperature": screening.temperature,
    "blood_pressure": screening.bloodPressure,
    "height": screening.height,
    "weight": screening.weight,
    "has_similar_condition": screening.hasSimilarCondition,
    "chief_complaint": screening.cheifComplain,
    "chief_message": screening.chiefComplainMessage,
    "has_allergies": screening.hasAllergies,
    "taking_medication": screening.patientTakingMedication,
    "medication_message": screening.patientTakingMedicationMessage,
    // "doctors": screening.doctors,
    "doctors_comment": screening.doctorsNote,
    "status": screening.status,
  });
}
