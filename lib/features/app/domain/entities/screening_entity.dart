import 'package:appwrite/models.dart';
import 'package:collection/collection.dart';

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

  factory ScreeningEntity.fromPayload(Map<String, dynamic> payload) {
    final List<dynamic> images = payload['images'];
    return ScreeningEntity(
      id: payload["\$id"],
      patient: payload["patient"]["\$id"],
      assignment: payload["assignment"]["\$id"],
      historyOfIllness: payload["historyOfIllness"],
      healthWorkerRemarks: payload["healthWorkerRemarks"],
      temperature: payload["temperature"],
      height: payload["height"],
      weight: payload["weight"],
      hasSimilarCondition: payload["hasSimilarCondition"],
      chiefComplaint: payload["chiefComplaint"],
      chiefComplaintMessage: payload["chiefComplaintMessage"],
      hasAllergies: payload["hasAllergies"],
      typeOfAllergies: payload["typeOfAllergies"],
      undergoSurgery: payload["undergoSurgery"],
      takingMedication: payload["takingMedication"],
      takingMedicationMessage: payload["takingMedicationMessage"],
      status: payload["status"],
      images: images.cast<String>(),
      createdAt: payload["\$createdAt"],
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ScreeningEntity &&
        id == other.id &&
        patient == other.patient &&
        assignment == other.assignment &&
        historyOfIllness == other.historyOfIllness &&
        healthWorkerRemarks == other.healthWorkerRemarks &&
        temperature == other.temperature &&
        height == other.height &&
        weight == other.weight &&
        hasSimilarCondition == other.hasSimilarCondition &&
        chiefComplaint == other.chiefComplaint &&
        chiefComplaintMessage == other.chiefComplaintMessage &&
        hasAllergies == other.hasAllergies &&
        typeOfAllergies == other.typeOfAllergies &&
        undergoSurgery == other.undergoSurgery &&
        takingMedication == other.takingMedication &&
        takingMedicationMessage == other.takingMedicationMessage &&
        status == other.status &&
        const ListEquality().equals(images, other.images);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        patient.hashCode ^
        assignment.hashCode ^
        historyOfIllness.hashCode ^
        healthWorkerRemarks.hashCode ^
        temperature.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        hasSimilarCondition.hashCode ^
        chiefComplaint.hashCode ^
        chiefComplaintMessage.hashCode ^
        hasAllergies.hashCode ^
        typeOfAllergies.hashCode ^
        undergoSurgery.hashCode ^
        takingMedication.hashCode ^
        takingMedicationMessage.hashCode ^
        status.hashCode ^
        const ListEquality().hash(images);
  }
}
