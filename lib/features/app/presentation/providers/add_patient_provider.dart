import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientNotifier extends StateNotifier<PatientEntity> {
  final StateNotifierProviderRef<PatientNotifier, PatientEntity> ref;
  PatientNotifier({required this.ref}) : super(emptyPatient);

  addPatient(PatientEntity patient) async {
    await useCases.patientsUseCases.setLocalPatient(patient);
    await useCases.patientsUseCases.setRemotePatient(patient);

    state = patient;
  }
}

final patientProvider =
    StateNotifierProvider<PatientNotifier, PatientEntity>((ref) {
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
  createdAt: '',
);
