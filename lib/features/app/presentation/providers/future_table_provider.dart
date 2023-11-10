import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureTableProvider = FutureProvider<List<TableEntity>>((ref) async {
  ref.watch(authenticationStateProvider);
  final List<UserEntity> doctors = await useCases.doctorsUseCases.getLocalDoctors();
  final List<SchoolEntity> schools = await useCases.schoolsUseCase.getLocalSchools();
  final List<ScreeningEntity> screenings = await useCases.screeningsUseCases.getLocalScreenings();
  final List<PatientEntity> patients = await useCases.patientsUseCases.getLocalPatients();

  List<TableEntity> table = patients.map(
    (patient) {
      ScreeningEntity screening = screenings.where((element) => element.patient == patient.id).first;
      SchoolEntity school = schools.where((element) => element.id == patient.school).first;
      UserEntity doctor = doctors.where((element) => element.id == patient.doctor).first;

      final int age = DateTime.now().year - DateTime.parse(patient.birthdate).year;

      return TableEntity(
        patientId: patient.id,
        name: patient.name,
        age: age.toString(),
        gender: patient.gender,
        status: screening.status,
        doctor: doctor.name,
        school: school.name,
      );
    },
  ).toList();

  ref.read(tableRecordsProvider.notifier).addAll(table);

  return table;
});

class TableRecordsNotifier extends StateNotifier<List<TableEntity>> {
  TableRecordsNotifier() : super([]);

  void add(TableEntity entity) => state = [...state, entity];

  void addAll(List<TableEntity> entities) {
    state = entities;
  }
}

final tableRecordsProvider =
    StateNotifierProvider<TableRecordsNotifier, List<TableEntity>>((ref) {
  return TableRecordsNotifier();
});
