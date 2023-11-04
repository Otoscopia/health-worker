import 'package:health_worker/features/features.dart';

class AddPatientUseCase {
  final ApplicationRepository repository;

  AddPatientUseCase({required this.repository});

  Future<void> call({required PatientEntity patient}) async {
    await repository.setPatient(patient: patient);
  }
}