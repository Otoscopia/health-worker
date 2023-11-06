import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientNotifier extends StateNotifier<PatientEntity> {
  final StateNotifierProviderRef<PatientNotifier, PatientEntity> ref;
  PatientNotifier({required this.ref}) : super(emptyPatient);

  addPatient(PatientEntity patient) async {
    final addPatientLocalUseCase = SetPatientLocalUseCase(repository: applicationRepository);
    await addPatientLocalUseCase.execute(patient: patient);
    
    final addPatientRemoteUseCase = SetPatientRemoteUseCase(repository: applicationRepository);
    await addPatientRemoteUseCase.execute(patient: patient);

    state = patient;
  }
}

final patientProvider = StateNotifierProvider<PatientNotifier, PatientEntity>((ref) {
  return PatientNotifier(ref: ref);
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


class PatientLoadingNotifier extends StateNotifier<bool> {
  PatientLoadingNotifier(): super(false);
  
  setLoading() => state = !state;
}

final patientLoadingProvider = StateNotifierProvider<PatientLoadingNotifier, bool>((ref) {
  return PatientLoadingNotifier();
});