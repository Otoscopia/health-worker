import 'package:health_worker/features/app/data/models/patient_model.dart';
import 'package:health_worker/features/app/domain/entity/screening_entity.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:isar/isar.dart';

part 'screening_model.g.dart';

@collection
@Name("screening_information")
class ScreeningModel extends ScreeningEntity {
  Id id = Isar.autoIncrement;
  final IsarLink<PatientModel> owner = IsarLink<PatientModel>();
  final createdBy = IsarLink<UserModel>();
  DateTime uploadedAt = DateTime.now();

  ScreeningModel(
      {required super.historyOfIllness,
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
      required super.filePath,
      required super.chiefComplainMessage,
      required super.patientTakingMedicationMessage});
}
