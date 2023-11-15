import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'patient_model.g.dart';

@collection
@Name("patients")
class PatientModel extends PatientEntity {
  Id isar = Isar.autoIncrement;

  PatientModel({
    required super.id,
    required super.name,
    required super.gender,
    required super.birthdate,
    required super.school,
    required super.schoolID,
    required super.guardiansName,
    required super.guardiansPhone,
    required super.creator,
    required super.doctor,
    required super.createdAt,
  });

  factory PatientModel.toModel(PatientEntity patient) {
    return PatientModel(
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
