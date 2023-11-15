import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'doctor_model.g.dart';

@collection
@Name("doctors")
class DoctorModel extends UserEntity {
  Id isar = Isar.autoIncrement;

  DoctorModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.role,
    required super.workAddress,
  });

  factory DoctorModel.toModel(UserEntity doctor) {
    return DoctorModel(
      id: doctor.id,
      name: doctor.name,
      email: doctor.email,
      phone: doctor.phone,
      role: doctor.role,
      workAddress: doctor.workAddress,
    );
  }
}
