class ScreeningEntity {
  String historyOfIllness;
  String healthWorkerComment;
  String frameOfInterest;
  String filePath;
  String bloodPressure;
  double temperature, height, weight;
  bool hasSimilarCondition;
  bool hasAllergies;
  bool patientUndergoSurgery;
  bool patientTakingMedication;
  String? chiefComplainMessage, patientTakingMedicationMessage;
  List<String> cheifComplain;

  ScreeningEntity({
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
