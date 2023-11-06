class ScreeningEntity {
  final String id;
  final String patient;
  final String assignment;
  final String historyOfIllness;
  final String healthWorkerRemarks;
  final String temperature;
  final String height;
  final String weight;
  final String hasSimilarCondition;
  final String chiefComplaint;
  final String chiefComplaintMessage;
  final String hasAllergies;
  final String typeOfAllergies;
  final String undergoSurgery;
  final String takingMedication;
  final String takingMedicationMessage;
  final String status;
  final String? createdAt;

  ScreeningEntity({
    required this.id,
    required this.patient,
    required this.assignment,
    required this.historyOfIllness,
    required this.healthWorkerRemarks,
    required this.temperature,
    required this.height,
    required this.weight,
    required this.hasSimilarCondition,
    required this.chiefComplaint,
    required this.chiefComplaintMessage,
    required this.hasAllergies,
    required this.typeOfAllergies,
    required this.undergoSurgery,
    required this.takingMedication,
    required this.takingMedicationMessage,
    required this.status,
    this.createdAt,
  });
}
