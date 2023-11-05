import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientNotifier extends StateNotifier<PatientEntity> {
  PatientNotifier() : super(emptyPatient);

  addPatient(PatientEntity patient) {
    final addPatientLocalUseCase = SetPatientLocalUseCase(repository: applicationRepository);
    addPatientLocalUseCase(patient: patient);
    
    final addPatientRemoteUseCase = SetPatientRemoteUseCase(repository: applicationRepository);
    addPatientRemoteUseCase(patient: patient);

    state = patient;
  }
}

final patientProvider = StateNotifierProvider<PatientNotifier, PatientEntity>((ref) {
  return PatientNotifier();
});

PatientEntity emptyPatient = PatientEntity(
  id: "",
  name: "",
  gender: "",
  birthdate: "",
  school: "",
  schoolID: "",
  guardiansName: "",
  guardiansPhone: "",
  creator: "",
  doctor: "",
);
