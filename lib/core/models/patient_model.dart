import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';

part 'patient_model.g.dart';

@collection
@Name("patients")
class PatientModel extends PatientEntity {
  Id isar = Isar.autoIncrement;

  PatientModel(
      {required super.id,
      required super.name,
      required super.gender,
      required super.birthdate,
      required super.school,
      required super.schoolID,
      required super.guardiansName,
      required super.guardiansPhone,
      required super.creator,
      required super.doctor});
}
