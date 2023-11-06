import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';

final futureTableProvider = FutureProvider<List<TableEntity>>((ref) async {
  final GetRemoteDoctorsUseCase getRemoteDoctorsUseCase =
      GetRemoteDoctorsUseCase(repository: applicationRepository);
  final List<UserEntity> doctors = await getRemoteDoctorsUseCase.execute();

  final GetSchoolsRemoteUseCase getRemoteSchoolsUseCase =
      GetSchoolsRemoteUseCase(repository: applicationRepository);
  final List<SchoolEntity> schools = await getRemoteSchoolsUseCase.execute();

  final GetScreeningsRemoteUseCase getRemoteScreeningsUseCase =
      GetScreeningsRemoteUseCase(repository: applicationRepository);
  final List<ScreeningEntity> screenings =
      await getRemoteScreeningsUseCase.execute();

  final GetPatientsRemoteUseCase getRemotePatientsUseCase =
      GetPatientsRemoteUseCase(repository: applicationRepository);
  final List<PatientEntity> patients = await getRemotePatientsUseCase.execute();

  List<TableEntity> table = patients.map((patient) {
    ScreeningEntity screening =
        screenings.where((element) => element.patient == patient.id).first;
    SchoolEntity school =
        schools.where((element) => element.id == patient.school).first;
    UserEntity doctor =
        doctors.where((element) => element.id == patient.doctor).first;

    final int age =
        DateTime.now().year - DateTime.parse(patient.birthdate).year;

    return TableEntity(
        patientId: patient.id,
        name: patient.name,
        age: age.toString(),
        gender: patient.gender,
        status: screening.status,
        doctor: doctor.name,
        school: school.name);
  }).toList();

  ref.read(tableRecordsProvider.notifier).addAll(table);

  return table;
});

class TableRecordsNotifier extends StateNotifier<List<TableEntity>> {
  TableRecordsNotifier() : super([]);

  void add(TableEntity entity) => state = [...state, entity];

  void addAll(List<TableEntity> entities) {
    state = entities;
  }

  void loadTableOffline() async {
    final GetLocalDoctorsUseCase getLocalDoctorsUseCase =
        GetLocalDoctorsUseCase(repository: applicationRepository);
    final List<UserEntity> doctors = await getLocalDoctorsUseCase.execute();

    final GetSchoolsLocalUseCase getLocalSchoolsUseCase =
        GetSchoolsLocalUseCase(repository: applicationRepository);
    final List<SchoolEntity> schools = await getLocalSchoolsUseCase.execute();

    final GetScreeningsLocalUseCase getLocalScreeningsUseCase =
        GetScreeningsLocalUseCase(repository: applicationRepository);
    final List<ScreeningEntity> screenings =
        await getLocalScreeningsUseCase.execute();

    final GetPatientsLocalUseCase getLocalPatientsUseCase =
        GetPatientsLocalUseCase(repository: applicationRepository);
    final List<PatientEntity> patients =
        await getLocalPatientsUseCase.execute();

    List<TableEntity> table = patients.map((patient) {
      ScreeningEntity screening =
          screenings.where((element) => element.patient == patient.id).first;
      SchoolEntity school =
          schools.where((element) => element.id == patient.school).first;
      UserEntity doctor =
          doctors.where((element) => element.id == patient.doctor).first;

      final int age =
          DateTime.parse(patient.birthdate).year - DateTime.now().year;
      return TableEntity(
          patientId: patient.id,
          name: patient.name,
          age: age.toString(),
          gender: patient.gender,
          status: screening.status,
          doctor: doctor.name,
          school: school.name);
    }).toList();

    state = table;
  }
}

final tableRecordsProvider =
    StateNotifierProvider<TableRecordsNotifier, List<TableEntity>>((ref) {
  return TableRecordsNotifier();
});
