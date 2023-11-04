import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'doctor_model.g.dart';

@collection
@Name("doctors")
class DoctorModel extends UserEntity {
  Id isar = Isar.autoIncrement;

  DoctorModel(this.isar,
      {required super.id,
      required super.name,
      required super.email,
      required super.phone,
      required super.role,
      required super.workAddress});
}
