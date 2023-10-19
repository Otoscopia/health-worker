import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/exports.dart';

addPatient(BuildContext context, WidgetRef ref, GlobalKey<FormState> globalKey) {
  String fullname = ref.read(fullnameProvider);
  int gender = ref.read(genderProvider);
  DateTime birthdate = ref.read(birthdateProvider);
  String contactNumber = ref.read(contactNumberProvider);
  String schoolName = ref.read(schoolNameProvider);
  String schoolId = ref.read(schoolIdProvider);

  if (globalKey.currentState!.validate() && gender != 3 && !isBirthdateToday(birthdate)) {
    ref.read(patientProvider.notifier).addNewPatient(fullname, gender, birthdate, contactNumber, schoolName, schoolId);
    Navigator.push(context, FluentPageRoute(builder: (context) => const LeftCamera()));
  } else {
    if (globalKey.currentState!.validate()) {}
    if (gender == 3) ref.read(genderErrorProvider.notifier).setGenderError(true);
    if (isBirthdateToday(birthdate)) ref.read(birthdateErrorProvider.notifier).setBirthdateError(true);
  }
}

bool isBirthdateToday(DateTime birthdate) {
  DateTime today = DateTime.now();
  return birthdate.day == today.day &&
      birthdate.month == today.month &&
      birthdate.year == today.year;
}
