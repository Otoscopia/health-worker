import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futurePatientsProvider = FutureProvider<List<PatientEntity>>((ref) async {
  ref.watch(authenticationStateProvider);
  final patients = await useCases.patientsUseCases.getRemotePatients();
  await useCases.patientsUseCases.setPatients(patients);
  
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