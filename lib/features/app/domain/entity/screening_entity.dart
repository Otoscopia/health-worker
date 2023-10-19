class ScreeningEntity {
  String uid;
  String historyOfIllness;
  String healthWorkerComment;
  String frameOfInterest;
  String filePath;
  String bloodPressure;
  String temperature;
  String height;
  String weight;
  String hasSimilarCondition;
  String hasAllergies;
  String patientUndergoSurgery;
  String patientTakingMedication;
  String? chiefComplainMessage, patientTakingMedicationMessage;
  String cheifComplain;

  ScreeningEntity({
    required this.uid,
    required this.historyOfIllness,
    required this.healthWorkerComment,
    required this.frameOfInterest,
    required this.temperature,
    required this.bloodPressure,
    required this.height,
    required this.weight,
    required this.hasSimilarCondition,
    required this.cheifComplain,
    required this.patientUndergoSurgery,
    required this.hasAllergies,
    required this.patientTakingMedication,
    required this.chiefComplainMessage,
    required this.patientTakingMedicationMessage,
    required this.filePath,
  });
}
