class ScreeningEntity {
  String historyOfIllness, healthWorkerComment, frameOfInterest, complains;
  double temperature, bloodPressure, height, weight;
  bool hasSimilarCondition, hasAllergies, patientUndergoSurgery, patientTakingMedication;
  String? chiefComplainMessage, patientTakingMedicationMessage;

  ScreeningEntity(
      {required this.historyOfIllness,
      required this.healthWorkerComment,
      required this.frameOfInterest,
      required this.complains,
      required this.temperature,
      required this.bloodPressure,
      required this.height,
      required this.weight,
      required this.hasSimilarCondition,
      required this.hasAllergies,
      required this.patientUndergoSurgery,
      required this.patientTakingMedication,
      this.chiefComplainMessage,
      this.patientTakingMedicationMessage});
}
