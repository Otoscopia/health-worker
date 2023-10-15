import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:isar/isar.dart';

import 'package:health_worker/features/app/domain/entity/patient_entity.dart';

part 'patient_model.g.dart';

@collection
@Name("patients")
class PatientModel extends PatientEntity {
  Id id = Isar.autoIncrement;
  final IsarLink<UserModel> createdBy = IsarLink<UserModel>();

  PatientModel({
    required super.uid,
    required super.fullName,
    required super.gender,
    required super.birthdate,
    required super.contactNumber,
    required super.schoolName,
    required super.schoolID,
  });
}
