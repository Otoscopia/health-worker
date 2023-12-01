import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'doctor_model.g.dart';

/// Isar collection for storing doctor entities.
@collection
@Name("doctors")
class DoctorModel extends UserEntity {
  /// Isar auto-incremented identifier for the doctor model.
  Id isar = Isar.autoIncrement;

  /// Constructor for the DoctorModel class.
  ///
  /// Initializes the doctor model with required parameters inherited from
  /// the [UserEntity] class.
  DoctorModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.role,
    required super.workAddress,
  });

  /// Factory method to create a [DoctorModel] from a [UserEntity].
  ///
  /// The provided [doctor] is a [UserEntity] instance representing a doctor.
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
