import 'package:encrypt/encrypt.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_patient_provider.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart';
import 'package:health_worker/features/authentication/exports.dart';
import 'package:isar/isar.dart';

Future<void> uploadMedicalRecord(WidgetRef ref) async {
  final userCollection = isar.userModels;
  final user = await userCollection.where().anyId().findFirst();

  var storageValue = await storage.read(key: user!.uid);
  var key = storageValue!.substring(0, 32);
  final encrypter = Encrypter(AES(Key.fromUtf8(key)));

  final patientUID = ref.read(patientProvider).uid;
  final patient = ref.read(patientProvider).fullName;
  final gender = ref.read(patientProvider).gender;
  final birthday = DateTime.parse(ref.read(patientProvider).birthdate);
  final contactNumber = ref.read(patientProvider).contactNumber;
  final schoolName = ref.read(patientProvider).schoolName;
  final schoolId = ref.read(patientProvider).schoolID;

  PatientModel patientModel = PatientModel(
    uid: patientUID,
    fullName: EncryptionClass().encryptData(patient, encrypter),
    gender: EncryptionClass().encryptData(gender, encrypter),
    birthdate: EncryptionClass().encryptData(birthday.toString(), encrypter),
    contactNumber: EncryptionClass().encryptData(contactNumber, encrypter),
    schoolName: EncryptionClass().encryptData(schoolName, encrypter),
    schoolID: EncryptionClass().encryptData(schoolId, encrypter),
    avatar: '',
    createdBy: user.uid,
  )..createdAt = DateTime.now();

  final historyOfIllness = ref.read(screeningProvider).historyOfIllness;
  final healthWorkerComment = ref.read(screeningProvider).healthWorkerComment;
  final frameOfInterest = ref.read(screeningProvider).frameOfInterest;
  final temperatureValue = ref.read(screeningProvider).temperature;
  final bloodPressure = ref.read(screeningProvider).bloodPressure;
  final heightValue = ref.read(screeningProvider).height;
  final weightValue = ref.read(screeningProvider).weight;
  final hasSimilarConditionValue =
      ref.read(screeningProvider).hasSimilarCondition;
  final cheifComplains = ref.read(screeningProvider).cheifComplain;
  final hasAllergiesValue = ref.read(screeningProvider).patientUndergoSurgery;
  final patientUndergoSurgeryValue = ref.read(screeningProvider).hasAllergies;
  final patientTakingMedicationValue =
      ref.read(screeningProvider).patientTakingMedication;
  final directory = ref.read(screeningProvider).filePath;
  final otherComplains = ref.read(screeningProvider).chiefComplainMessage;
  final medicationComment =
      ref.read(screeningProvider).patientTakingMedicationMessage;

  ScreeningModel model = ScreeningModel(
      uid: uuid.v4().toString(),
      historyOfIllness:
          EncryptionClass().encryptData(historyOfIllness, encrypter),
      healthWorkerComment:
          EncryptionClass().encryptData(healthWorkerComment, encrypter),
      frameOfInterest:
          EncryptionClass().encryptData(frameOfInterest, encrypter),
      temperature: EncryptionClass().encryptData(temperatureValue, encrypter),
      bloodPressure: EncryptionClass().encryptData(bloodPressure, encrypter),
      height: EncryptionClass().encryptData(heightValue, encrypter),
      weight: EncryptionClass().encryptData(weightValue, encrypter),
      hasSimilarCondition: EncryptionClass()
          .encryptData(hasSimilarConditionValue.toString(), encrypter),
      cheifComplain:
          EncryptionClass().encryptData(cheifComplains.toString(), encrypter),
      patientUndergoSurgery:
          EncryptionClass().encryptData(hasAllergiesValue, encrypter),
      hasAllergies:
          EncryptionClass().encryptData(patientUndergoSurgeryValue, encrypter),
      patientTakingMedication: EncryptionClass()
          .encryptData(patientTakingMedicationValue, encrypter),
      filePath: EncryptionClass().encryptData(directory, encrypter),
      chiefComplainMessage: otherComplains != null && otherComplains.isNotEmpty
          ? EncryptionClass().encryptData(otherComplains, encrypter)
          : medicationComment,
      patientTakingMedicationMessage:
          medicationComment != null && medicationComment.isNotEmpty
              ? EncryptionClass().encryptData(medicationComment, encrypter)
              : medicationComment,
      status: 'Pending',
      owner: EncryptionClass().encryptData(patientUID, encrypter),
      createdBy: EncryptionClass().encryptData(user.uid, encrypter))
    ..uploadedAt;

  // final Directory dir = Directory(directory);
  // dir.listSync().map((element) {

  //   EncryptionClass().encryptFiles(File(element.path), encrypter, element., savePath)
  //   element.path.contains('left-');
  // });

  await isar.writeTxn(() async {
    await isar.patientModels.put(patientModel);
    await isar.screeningModels.put(model);
  });

  await ref.watch(patientListProvider.notifier).fetchPatients();
  await ref.watch(screeningListProvider.notifier).fetchScreeningRecords();

  if (ref.read(applicationStateProvider).connected) {}
  await setStatetoEmpty(ref);
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
