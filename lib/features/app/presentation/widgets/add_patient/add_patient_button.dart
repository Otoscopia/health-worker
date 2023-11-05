import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/domain/use_cases/encrypt_use_case.dart';
import 'package:health_worker/features/features.dart';

class AddPatientButton extends ConsumerWidget {
  final GlobalKey<FormState> globalKey;
  const AddPatientButton({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 150,
      child: FilledButton(
        child: const Text(continueLabel),
        onPressed: () {
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

          UserEntity creator = ref.read(userProvider);

          bool checkpoint = globalKey.currentState!.validate() &&
              gender != 3 &&
              !isBirthdateToday(birthdate);

          if (checkpoint) {
            final EncryptUseCase encryptUseCase =
                EncryptUseCase(repository: applicationRepository);
            final PatientEntity patient = PatientEntity(
              id: id,
              name: encryptUseCase.execute(data: name),
              gender: encryptUseCase.execute(data: genders[gender]),
              birthdate: encryptUseCase.execute(data: birthdate.toIso8601String()),
              school: school,
              schoolID: encryptUseCase.execute(data: schoolID),
              guardiansName: encryptUseCase.execute(data: guardiansName),
              guardiansPhone: encryptUseCase.execute(data: guardiansPhone),
              creator: creator.id,
              doctor: doctors.first.id,
            );

            ref.read(patientProvider.notifier).addPatient(patient);

            Navigator.push(context, FluentPageRoute(builder: (context) => const ScreeningInformation()));
          } else {
            if (globalKey.currentState!.validate()) {}
            if (gender == 3) {
              ref.read(genderErrorProvider.notifier).setGenderError(true);
            }
            if (isBirthdateToday(birthdate)) {
              ref.read(birthdateErrorProvider.notifier).setBirthdateError(true);
            }
          }
        },
      ),
    );
  }
}

bool isBirthdateToday(DateTime birthdate) {
  DateTime today = DateTime.now();
  return birthdate.day == today.day &&
      birthdate.month == today.month &&
      birthdate.year == today.year;
}
