import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

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

  factory ScreeningEntity.fromDocument(Document screening) {
    final List<dynamic> images = screening.data['images'];

    return ScreeningEntity(
      id: screening.$id,
      patient: screening.data["patient"]["\$id"],
      assignment: screening.data["assignment"]["\$id"],
      historyOfIllness: screening.data["historyOfIllness"],
      healthWorkerRemarks: screening.data["healthWorkerRemarks"],
      temperature: screening.data["temperature"],
      height: screening.data["height"],
      weight: screening.data["weight"],
      hasSimilarCondition: screening.data["hasSimilarCondition"],
      chiefComplaint: screening.data["chiefComplaint"],
      chiefComplaintMessage: screening.data["chiefComplaintMessage"],
      hasAllergies: screening.data["hasAllergies"],
      typeOfAllergies: screening.data["typeOfAllergies"],
      undergoSurgery: screening.data["undergoSurgery"],
      takingMedication: screening.data["takingMedication"],
      takingMedicationMessage: screening.data["takingMedicationMessage"],
      status: screening.data["status"],
      images: images.cast<String>(),
      createdAt: screening.$createdAt,
    );
  }

  factory ScreeningEntity.fromModel(ScreeningModel screening) {
    return ScreeningEntity(
      id: screening.id,
      patient: screening.patient,
      assignment: screening.assignment,
      historyOfIllness: screening.historyOfIllness,
      healthWorkerRemarks: screening.healthWorkerRemarks,
      temperature: screening.temperature,
      height: screening.height,
      weight: screening.weight,
      hasSimilarCondition: screening.hasSimilarCondition,
      chiefComplaint: screening.chiefComplaint,
      chiefComplaintMessage: screening.chiefComplaintMessage,
      hasAllergies: screening.hasAllergies,
      typeOfAllergies: screening.typeOfAllergies,
      undergoSurgery: screening.undergoSurgery,
      takingMedication: screening.takingMedication,
      takingMedicationMessage: screening.takingMedicationMessage,
      status: screening.status,
      images: screening.images,
      createdAt: screening.createdAt,
    );
  }

  static Map<String, dynamic> toMap(ScreeningEntity screening) {
    return {
      "patient": screening.patient,
      "assignment": screening.assignment,
      "historyOfIllness": screening.historyOfIllness,
      "healthWorkerRemarks": screening.healthWorkerRemarks,
      "temperature": screening.temperature,
      "height": screening.height,
      "weight": screening.weight,
      "hasSimilarCondition": screening.hasSimilarCondition,
      "chiefComplaint": screening.chiefComplaint,
      "chiefComplaintMessage": screening.chiefComplaintMessage,
      "hasAllergies": screening.hasAllergies,
      "typeOfAllergies": screening.typeOfAllergies,
      "undergoSurgery": screening.undergoSurgery,
      "takingMedication": screening.takingMedication,
      "takingMedicationMessage": screening.takingMedicationMessage,
      "status": screening.status,
      "images": screening.images,
    };
  }
}
