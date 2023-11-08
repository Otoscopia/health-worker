import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'screening_model.g.dart';

@collection
@Name("screenings")
class ScreeningModel extends ScreeningEntity {
  Id isar = Isar.autoIncrement;

  ScreeningModel({
    required super.id,
    required super.patient,
    required super.assignment,
    required super.historyOfIllness,
    required super.healthWorkerRemarks,
    required super.temperature,
    required super.height,
    required super.weight,
    required super.hasSimilarCondition,
    required super.chiefComplaint,
    required super.chiefComplaintMessage,
    required super.hasAllergies,
    required super.typeOfAllergies,
    required super.undergoSurgery,
    required super.takingMedication,
    required super.takingMedicationMessage,
    required super.status,
    required super.images,
    required super.createdAt,
  });
}
