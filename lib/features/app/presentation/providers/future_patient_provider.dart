import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futurePatientsProvider = FutureProvider<List<PatientEntity>>((ref) async {
  final patientUseCase = GetPatientsRemoteUseCase(repository: applicationRepository);
  final patients = await patientUseCase.execute();
  ref.read(patientsProvider.notifier).setPatient(patients);
  return patients;
});

class PatientsNotifier extends StateNotifier<List<PatientEntity>> {
  PatientsNotifier(): super([]);

  setPatient(List<PatientEntity> patients) => state = patients; 

  addPatient(PatientEntity patient) {
    state = [...state, patient];
  }
}

final patientsProvider = StateNotifierProvider<PatientsNotifier, List<PatientEntity>>((ref) {
  return PatientsNotifier();
});