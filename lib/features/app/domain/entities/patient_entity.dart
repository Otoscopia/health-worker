import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

class PatientEntity {
  // patient id
  final String id;

  // patient name
  final String name;

  // patient gender
  final String gender;

  // patient birthdate
  final String birthdate;

  // patient school id (foreign key)
  final String school;

  // patient school
  final String schoolID;

  // patient guardian's name
  final String guardiansName;

  // patient guardian's phone
  final String guardiansPhone;

  // patient creator id (foreign key)
  final String creator;

  // patient doctor id (foreign key)
  final String doctor;

  // patient created date
  final String createdAt;

  PatientEntity({
    required this.id,
    required this.name,
    required this.gender,
    required this.birthdate,
    required this.school,
    required this.schoolID,
    required this.guardiansName,
    required this.guardiansPhone,
    required this.creator,
    required this.doctor,
    required this.createdAt,
  });

  factory PatientEntity.fromDocument(Document patient) {
    return PatientEntity(
      id: patient.$id,
      name: patient.data["name"],
      gender: patient.data["gender"],
      birthdate: patient.data["birthdate"],
      school: patient.data["school"]["\$id"],
      schoolID: patient.data["schoolID"],
      guardiansName: patient.data["guardiansName"],
      guardiansPhone: patient.data["guardiansPhone"],
      creator: patient.data["creator"]["\$id"],
      doctor: patient.data["doctor"]["\$id"],
      createdAt: patient.$createdAt,
    );
  }

  factory PatientEntity.fromModel(PatientModel patient) {
    return PatientEntity(
      id: patient.id,
      name: patient.name,
      gender: patient.gender,
      birthdate: patient.birthdate,
      school: patient.school,
      schoolID: patient.schoolID,
      guardiansName: patient.guardiansName,
      guardiansPhone: patient.guardiansPhone,
      creator: patient.creator,
      doctor: patient.doctor,
      createdAt: patient.createdAt,
    );
  }
}
