import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

Future<void> patients(WidgetRef ref, List<SchoolEntity> schools) async {
  // Late declare patients variable
  late final List<PatientEntity> patients;

  // Late declate cloud patients variable
  late final List<PatientEntity> cloud;

  // Late declate local patients variable
  late final List<PatientEntity> local;

  // Get local patients
  local = await useCases.patientsUseCases.getLocalPatients();

  // Check if user is online
  if (ref.read(networkProvider)) {
    // Check if schools is not empty
    if (schools.isNotEmpty) {
      // Get remote patients
      cloud = await useCases.patientsUseCases.getRemotePatients();

      // Check if patients are in schools list and initialize patients
      patients = cloud
          .where(
              (patient) => schools.any((school) => school.id == patient.school))
          .toList();

      // Filter patients that is not in local storage
      List<PatientEntity> filter = patients
          .where((patient) => !local.any((element) => element.id == patient.id))
          .toList();

      // Set patients to local storage
      await useCases.patientsUseCases.setPatients(filter);
    }
  } else {
    // Set local patients to patients
    patients = local;
  }

  // Set patients to provider
  ref.read(patientsProvider.notifier).setPatient(patients);
}

class PatientsNotifier extends StateNotifier<List<PatientEntity>> {
  PatientsNotifier() : super([]);

  setPatient(List<PatientEntity> patients) => state = patients;

  addPatient(PatientEntity patient) {
    state = [...state, patient];
  }
}

final patientsProvider =
    StateNotifierProvider<PatientsNotifier, List<PatientEntity>>((ref) {
  return PatientsNotifier();
});
