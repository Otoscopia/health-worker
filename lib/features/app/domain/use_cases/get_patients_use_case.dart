import 'package:health_worker/features/features.dart';

class GetPatientsUseCase {
  final ApplicationRepository repository;

  GetPatientsUseCase({required this.repository});

  Future<List<PatientEntity>> execute() async {
    List<PatientEntity> patients = await repository.getPatients();
    return patients;
  }
}
