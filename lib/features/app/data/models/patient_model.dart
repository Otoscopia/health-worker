import 'package:isar/isar.dart';

import 'package:health_worker/features/authentication/exports.dart';
import 'package:health_worker/features/app/exports.dart';

part 'patient_model.g.dart';

@collection
@Name("patients")
class PatientModel extends PatientEntity {
  Id id = Isar.autoIncrement;
  final IsarLink<UserModel> createdBy = IsarLink<UserModel>();
  DateTime createdAt;
  String avatar;

  PatientModel({
    required super.uid,
    required this.avatar,
    required super.fullName,
    required super.gender,
    required super.birthdate,
    required super.contactNumber,
    required super.schoolName,
    required super.schoolID,
    required this.createdAt
  });
}
