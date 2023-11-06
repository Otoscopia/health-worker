import 'package:health_worker/features/features.dart';

class SetPatientRemoteUseCase {
  final ApplicationRepository repository;

  SetPatientRemoteUseCase({required this.repository});

  Future<void> execute({required PatientEntity patient}) async {
    await repository.setPatientRemote(patient: patient);
  }
}

class SetPatientLocalUseCase {
  final ApplicationRepository repository;

  SetPatientLocalUseCase({required this.repository});

  Future<void> execute({required PatientEntity patient}) async {
    await repository.setPatientLocal(patient: patient);
  }
}