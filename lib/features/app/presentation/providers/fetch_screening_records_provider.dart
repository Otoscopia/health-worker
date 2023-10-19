import 'package:encrypt/encrypt.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';
import 'package:isar/isar.dart';

class ScreeningListNotifier extends StateNotifier<List<ScreeningModel>> {
  final StateNotifierProviderRef<ScreeningListNotifier, List<ScreeningModel>>
      ref;
  ScreeningListNotifier(this.ref) : super([]);

  fetchScreeningRecords() async {
    var storageValue = await storage.read(key: ref.read(userProvider).uid);

    var key = storageValue!.substring(0, 32);

    final encrypter = Encrypter(AES(Key.fromUtf8(key)));

    IsarCollection<ScreeningModel> screeningCollection = isar.screeningModels;
    List<ScreeningModel> screeningRecords =
        await screeningCollection.where().findAll();
    List<ScreeningModel> screeningRecordsList = screeningRecords.map((records) {
      return ScreeningModel(
          uid: records.uid,
          historyOfIllness: EncryptionClass().decryptData(records.historyOfIllness, encrypter),
          healthWorkerComment: EncryptionClass().decryptData(records.healthWorkerComment, encrypter),
          frameOfInterest: EncryptionClass().decryptData(records.frameOfInterest, encrypter),
          temperature: EncryptionClass().decryptData(records.temperature, encrypter),
          bloodPressure: EncryptionClass().decryptData(records.bloodPressure, encrypter),
          height: EncryptionClass().decryptData(records.height, encrypter),
          weight: EncryptionClass().decryptData(records.weight, encrypter),
          hasSimilarCondition: EncryptionClass().decryptData(records.hasSimilarCondition.toString(), encrypter),
          cheifComplain: EncryptionClass().decryptData(records.cheifComplain.toString(), encrypter),
          patientUndergoSurgery: EncryptionClass().decryptData(records.patientUndergoSurgery.toString(), encrypter),
          hasAllergies: EncryptionClass().decryptData(records.hasAllergies.toString(), encrypter),
          patientTakingMedication: EncryptionClass().decryptData(records.patientTakingMedication.toString(), encrypter),
          filePath: EncryptionClass().decryptData(records.filePath, encrypter),
          chiefComplainMessage: records.chiefComplainMessage != null && records.chiefComplainMessage!.isNotEmpty ? EncryptionClass().decryptData(records.chiefComplainMessage.toString(), encrypter) : records.chiefComplainMessage,
          patientTakingMedicationMessage: records.patientTakingMedicationMessage != null && records.patientTakingMedicationMessage!.isNotEmpty ? EncryptionClass().decryptData(records.patientTakingMedicationMessage.toString(), encrypter) : records.patientTakingMedicationMessage,
          status: records.status,
          owner: EncryptionClass().decryptData(records.owner, encrypter),
          createdBy: EncryptionClass().decryptData(records.createdBy, encrypter));
    }).toList();
    state = screeningRecordsList;
  }
}

final screeningListProvider =
    StateNotifierProvider<ScreeningListNotifier, List<ScreeningModel>>((ref) {
  return ScreeningListNotifier(ref);
});
