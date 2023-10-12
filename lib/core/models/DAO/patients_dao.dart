import 'package:floor/floor.dart';

import 'package:health_worker/features/app/data/models/patient_models.dart';

@dao
abstract class PatientDao {
  @insert
  Future<void> insertPatient(PatientModel patient);

  @Query('SELECT * FROM patients')
  Future<List<PatientModel>> fetchPatients();

  @Query('TRUNCATE TABLE patients')
  Future<void> dropPatient();
}