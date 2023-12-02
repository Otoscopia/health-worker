// import 'package:health_worker/features/features.dart';

class TableEntity {
  // patient id (foreign key)
  final String patientId;

  // patient name
  final String name;

  // patient age
  final String age;

  // patient gender
  final String gender;

  // medical record status
  final String status;

  // patient doctor
  final String doctor;

  // patient school
  final String school;

  TableEntity({
    required this.patientId,
    required this.name,
    required this.age,
    required this.gender,
    required this.status,
    required this.doctor,
    required this.school,
  });

  factory TableEntity.toTable(TableEntity entity, String status) {
    return TableEntity(
      patientId: entity.patientId,
      name: entity.name,
      age: entity.age,
      gender: entity.gender,
      status: status,
      doctor: entity.doctor,
      school: entity.school,
    );
  }

  factory TableEntity.empty() => TableEntity(patientId: "", name: "", age: "", gender: "", status: "", doctor: "", school: "");
}
