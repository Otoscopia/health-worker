import 'package:encrypt/encrypt.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/app/data/models/patient_model.dart';
import 'package:health_worker/features/app/domain/usestate/encryption.dart';
import 'package:health_worker/features/authentication/exports.dart';
import 'package:isar/isar.dart';

class PatientListNotifier extends StateNotifier<List<PatientModel>> {
  final StateNotifierProviderRef<PatientListNotifier, List<PatientModel>> ref;
  PatientListNotifier(this.ref) : super([]);

  fetchPatients() async {
    var storageValue = await storage.read(key: ref.read(userProvider).uid);

    var key = storageValue!.substring(0, 32);

    final encrypter = Encrypter(AES(Key.fromUtf8(key)));

    IsarCollection<PatientModel> patientCollection = isar.patientModels;
    List<PatientModel> patients = await patientCollection.where().findAll();
    List<PatientModel> patientList = patients.map((patient) {
      return PatientModel(
          uid: patient.uid,
          avatar: patient.avatar,
          fullName: EncryptionClass().decryptData(patient.fullName, encrypter),
          gender: EncryptionClass().decryptData(patient.gender, encrypter),
          birthdate: EncryptionClass().decryptData(patient.birthdate, encrypter),
          contactNumber: EncryptionClass().decryptData(patient.contactNumber, encrypter),
          schoolName: EncryptionClass().decryptData(patient.schoolName, encrypter),
          schoolID: EncryptionClass().decryptData(patient.schoolID, encrypter),
          createdBy: ref.read(userProvider).uid);
    }).toList();
    state = patientList;
  }
}

final patientListProvider =
    StateNotifierProvider<PatientListNotifier, List<PatientModel>>((ref) {
  return PatientListNotifier(ref);
});
