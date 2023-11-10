import 'package:health_worker/features/features.dart';

class PatientsUseCases {
  final PatientsRepository _repository;

  PatientsUseCases({required PatientsRepository repository})
      : _repository = repository;

  // Get patients from remote database using patient repository
  Future<List<PatientEntity>> getRemotePatients() async {
    return await _repository.getRemotePatients();
  }

  // Get patients from local database using patient repository
  Future<List<PatientEntity>> getLocalPatients() async {
    return await _repository.getLocalPatients();
  }

  // Set patients to local database using patient repository
  Future<void> setPatients(List<PatientEntity> patients) async {
    return await _repository.setPatients(patients: patients);
  }

  // Set patient to local database using patient repository
  Future<void> setLocalPatient(PatientEntity patient) async {
    return await _repository.setLocalPatient(patient: patient);
  }

  // Set patient to remote database using patient repository
  Future<void> setRemotePatient(PatientEntity patient) async {
    return await _repository.setRemotePatient(patient: patient);
  }

  // Find patient from local database using patient repository
  Future<PatientEntity?> findPatient(String id) async {
    return await _repository.findPatient(id: id);
  }

  // Remove patients from local database using patient repository
  Future<void> removePatients() async {
    return await _repository.removePatients();
  }
}
