import 'package:isar/isar.dart';

import 'package:health_worker/features/app/exports.dart';

part 'patient_model.g.dart';

@collection
@Name("patients")
class PatientModel extends PatientEntity {
  Id id = Isar.autoIncrement;
  DateTime createdAt = DateTime.now();
  String avatar;
  String createdBy;

  PatientModel({required super.uid,
      required this.avatar,
      required super.fullName,
      required super.gender,
      required super.birthdate,
      required super.contactNumber,
      required super.schoolName,
      required super.schoolID,
      required this.createdBy});

  @override
  String toString() {
    return '$id,$createdAt,$avatar,$createdBy,${super.uid},${super.fullName},${super.gender},${super.birthdate},${super.contactNumber},${super.schoolName},${super.schoolID}';
  }

  factory PatientModel.fromString(String patientString) {
    final List<String> patientData = patientString.split(',');
    return PatientModel(
      uid: patientData[4],
      fullName: patientData[5],
      gender: patientData[6],
      birthdate: patientData[7],
      contactNumber: patientData[8],
      schoolName: patientData[9],
      schoolID: patientData[10],
      avatar: patientData[2],
      createdBy: patientData[3],
    );
  }
}
