import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientNotifier extends StateNotifier<PatientEntity> {
  final StateNotifierProviderRef<PatientNotifier, PatientEntity> ref;
  PatientNotifier({required this.ref}) : super(emptyPatient);

  addPatient() async {
    String id = uuid.v4();
    String name = ref.read(fullnameProvider);
    int gender = ref.read(genderProvider);
    DateTime birthdate = ref.read(birthdateProvider);
    String guardiansName = ref.read(guardianFullnameProvider);
    String guardiansPhone = ref.read(contactNumberProvider);
    String school = ref.read(schoolNameProvider);
    String schoolID = ref.read(schoolIdProvider);

    // shuffle doctors to randomize the doctor assigned to the patient
    List<UserEntity> doctors = ref.read(doctorsProvider);
    doctors.shuffle(Random(Random().nextInt(1000)));

    String creator = ref.read(userProvider).id;

    // set state
    state = PatientEntity(
      id: id,
      name: name,
      gender: genders[gender],
      birthdate: birthdate.toIso8601String(),
      school: school,
      schoolID: schoolID,
      guardiansName: guardiansName,
      guardiansPhone: guardiansPhone,
      creator: creator,
      doctor: doctors.first.id,
      createdAt: DateTime.now().toIso8601String(),
    );

    // clean states
    ref.read(fullnameProvider.notifier).setFullname("");
    ref.read(genderProvider.notifier).setGender(3);
    ref.read(birthdateProvider.notifier).setBirthdate(DateTime.now());
    ref.read(guardianFullnameProvider.notifier).setFullname("");
    ref.read(contactNumberProvider.notifier).setContactNumber("");
    ref.read(schoolNameProvider.notifier).setSchoolName("");
    ref.read(schoolIdProvider.notifier).setSchoolId("");
  }

  cleanState() => state = emptyPatient;

  findPatient(String id) async {
    late final List<PatientEntity> patients;

    patients = ref.read(patientsProvider);

    return patients.where((element) => element.id == id).first;
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
