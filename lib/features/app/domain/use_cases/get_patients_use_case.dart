import 'package:health_worker/features/features.dart';

class GetPatientsRemoteUseCase {
  final ApplicationRepository repository;

  GetPatientsRemoteUseCase({required this.repository});

  Future<List<PatientEntity>> execute() async {
    List<PatientEntity> patients = await repository.getPatientsRemote();
    return patients;
  }
}

class GetPatientsLocalUseCase {
  final ApplicationRepository repository;

  GetPatientsLocalUseCase({required this.repository});

  Future<List<PatientEntity>> execute() async {
    List<PatientEntity> patients = await repository.getPatientsLocal();
    return patients;
  }
}
