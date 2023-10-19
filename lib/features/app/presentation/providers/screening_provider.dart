import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/exports.dart';

class ScreeningNotifier extends StateNotifier<ScreeningEntity> {
  ScreeningNotifier()
      : super(ScreeningEntity(
            uid: "",
            historyOfIllness: '',
            healthWorkerComment: '',
            frameOfInterest: '',
            temperature: "",
            bloodPressure: "",
            height: "",
            weight: "",
            hasSimilarCondition: false.toString(),
            hasAllergies: false.toString(),
            patientUndergoSurgery: false.toString(),
            patientTakingMedication: false.toString(),
            cheifComplain: ["", "", "", "", "", ""].toString(),
            filePath: '',
            chiefComplainMessage: '',
            patientTakingMedicationMessage: ''));

  setProvider(
      String uid,
      String historyOfIllness,
      String healthWorkerComment,
      String frameOfInterest,
      String temperature,
      String bloodPressure,
      String height,
      String weight,
      int similarCondition,
      List<String> cheifComplains,
      String otherComplains,
      int allergies,
      int surgicalProcedure,
      int medication,
      String medicationComment,
      String directory,
      WidgetRef ref) async {
    var temperatureValue = temperature;
    var heightValue = height;
    var weightValue = weight;
    var hasSimilarConditionValue = similarCondition == 1 ? true : false;
    var hasAllergiesValue = allergies == 1 ? true : false;
    var patientUndergoSurgeryValue = surgicalProcedure == 1 ? true : false;
    var patientTakingMedicationValue = medication == 0 ? true : false;

    state = ScreeningEntity(
        uid: uid,
        historyOfIllness: historyOfIllness,
        healthWorkerComment: healthWorkerComment,
        frameOfInterest: frameOfInterest,
        temperature: temperatureValue,
        bloodPressure: bloodPressure,
        height: heightValue,
        weight: weightValue,
        hasSimilarCondition: hasSimilarConditionValue.toString(),
        cheifComplain: cheifComplains.toString(),
        hasAllergies: hasAllergiesValue.toString(),
        patientUndergoSurgery: patientUndergoSurgeryValue.toString(),
        patientTakingMedication: patientTakingMedicationValue.toString(),
        filePath: directory,
        chiefComplainMessage: otherComplains,
        patientTakingMedicationMessage: medicationComment);
  }

  setStateClean() {
    state = ScreeningEntity(
        uid: '',
        historyOfIllness: '',
        healthWorkerComment: '',
        frameOfInterest: '',
        temperature: "",
        bloodPressure: "",
        height: "",
        weight: "",
        hasSimilarCondition: false.toString(),
        hasAllergies: false.toString(),
        patientUndergoSurgery: false.toString(),
        patientTakingMedication: false.toString(),
        cheifComplain: ["", "", "", "", "", ""].toString(),
        filePath: '',
        chiefComplainMessage: '',
        patientTakingMedicationMessage: '');
  }
}

final screeningProvider =
    StateNotifierProvider<ScreeningNotifier, ScreeningEntity>((ref) {
  return ScreeningNotifier();
});
