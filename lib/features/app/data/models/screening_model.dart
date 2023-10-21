import 'package:health_worker/features/app/domain/entity/screening_entity.dart';
import 'package:isar/isar.dart';

part 'screening_model.g.dart';

@collection
@Name("screening_information")
class ScreeningModel extends ScreeningEntity {
  Id id = Isar.autoIncrement;
  final String createdBy;
  final DateTime screenedAt;
  final DateTime? verifiedAt;
  final String status;
  final String owner;
  final String? verifiedBy;
  final String? doctorsNote;

  ScreeningModel({
    required super.uid,
    required super.historyOfIllness,
    required super.healthWorkerComment,
    required super.frameOfInterest,
    required super.temperature,
    required super.bloodPressure,
    required super.height,
    required super.weight,
    required super.hasSimilarCondition,
    required super.cheifComplain,
    required super.patientUndergoSurgery,
    required super.hasAllergies,
    required super.patientTakingMedication,
    required super.chiefComplainMessage,
    required super.patientTakingMedicationMessage,
    required this.status,
    required this.owner,
    required this.createdBy,
    required this.screenedAt,
    this.doctorsNote,
    this.verifiedAt,
    this.verifiedBy,
  });
}
