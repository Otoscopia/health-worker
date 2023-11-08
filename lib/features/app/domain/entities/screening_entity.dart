class ScreeningEntity {
  // screening id
  final String id;

  // patient id (foreign key)
  final String patient;

  // assignment id (foreign key)
  final String assignment;

  // history of illness
  final String historyOfIllness;

  // health worker remarks
  final String healthWorkerRemarks;

  // temperature
  final String temperature;

  // height
  final String height;

  // weight
  final String weight;

  // has similar condition
  final String hasSimilarCondition;

  // chief complaint
  final String chiefComplaint;

  // chief complaint message
  final String chiefComplaintMessage;

  // has allergies
  final String hasAllergies;

  // type of allergies
  final String typeOfAllergies;

  // undergo surgery
  final String undergoSurgery;

  // taking medication
  final String takingMedication;

  // taking medication message
  final String takingMedicationMessage;

  // screening status
  final String status;

  // screening images
  final List<String> images;

  // screening created date
  final String createdAt;

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
    required this.images,
    required this.createdAt,
  });
}
