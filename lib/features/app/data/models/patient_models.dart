import 'package:floor/floor.dart';
import 'package:health_worker/features/app/domain/entity/patient_entity.dart';

@Entity(tableName: 'patients')
@entity
class PatientModel extends PatientEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String uid;

  PatientModel(
      {this.id,
      required this.uid,
      required super.fullName,
      required super.gender,
      required super.birthdate,
      required super.schoolName,
      required super.schoolID});
}
