import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

Future<List<SchoolEntity>> schools(
    WidgetRef ref, List<AssignmentEntity> assignments) async {
  // Late declare schools variable
  late final List<SchoolEntity> schools;

  // Late declare cloud schools variable
  late final List<SchoolEntity> cloud;

  // Check if user is online
  if (ref.read(networkProvider)) {
    // Get remote schools
    cloud = await useCases.schoolsUseCase.getRemoteSchools();

    // Check if schools are in assignments list and initialize schools
    schools = cloud
        .where((school) =>
            assignments.any((assignment) => assignment.school == school.id))
        .toList();

    // Set schools to local storage
    await useCases.schoolsUseCase.setSchools(schools);
  } else {
    // Get local schools
    schools = await useCases.schoolsUseCase.getLocalSchools();
  }

  // Set schools to provider
  ref.read(schoolsProvider.notifier).setSchool(schools);

  return schools;
}

class SchoolsNotifier extends StateNotifier<List<SchoolEntity>> {
  SchoolsNotifier() : super([]);

  setSchool(List<SchoolEntity> schools) => state = schools;

  SchoolEntity findSchool(String id) {
    final school = state.where((element) => element.id == id).first;
    return school;
  }
}

final schoolsProvider =
    StateNotifierProvider<SchoolsNotifier, List<SchoolEntity>>((ref) {
  return SchoolsNotifier();
});

/*
// Check if user is online
  if (ref.read(networkProvider)) {
    // Check if schools is not empty
    if (schools.isNotEmpty) {
      // Get remote patients
      cloud = await useCases.patientsUseCases.getRemotePatients();

      // check patients schools if they are in the schools list
      patients = cloud
          .where((patient) =>
              schools.any((school) => school.id == patient.schoolID))
          .toList();

      //// cloud.removeWhere((patient) => schools.any((school) => school.id != patient.schoolID));

      //// cloud.map((patient) {
      ////   if (schools.any((school) => school.id == patient.schoolID)) {
      ////     // Add patient to patients list
      ////     patients.add(patient);
      ////   }
      //// });

      // Check local patients against remote patients and remove duplicates
      patients.removeWhere((element) => local.contains(element));

      // // Add remote patients to local patients
      // patients = [...local, ...cloud];

      // Set patients to provider
      await useCases.patientsUseCases.setPatients(patients);
    }
  } else {
    // Set patients to local patients if user is offline
    patients = local;

    // Set patients to provider
    await useCases.patientsUseCases.setPatients(patients);
  }

  // Set patients to local storage

  // Set patients to provider
  ref.read(patientsProvider.notifier).setPatient(patients);
*/