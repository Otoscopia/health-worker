import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/exports.dart';

addPatient(BuildContext context, WidgetRef ref, GlobalKey<FormState> globalKey) {
  String fullname = ref.watch(fullnameProvider);
  int gender = ref.watch(genderProvider);
  DateTime birthdate = ref.watch(birthdateProvider);
  String contactNumber = ref.watch(contactNumberProvider);
  String schoolName = ref.watch(schoolIdProvider);
  String schoolId = ref.watch(schoolIdProvider);

  if (gender == 3 && isBirthdateToday(birthdate) && globalKey.currentState!.validate()) {
    ref.watch(genderErrorProvider.notifier).setGenderError(true);
    ref.watch(birthdateErrorProvider.notifier).setBirthdateError(true);
  } else if (isBirthdateToday(birthdate)) {
    ref.watch(birthdateErrorProvider.notifier).setBirthdateError(true);
  } else if (gender == 3) {
    ref.watch(genderErrorProvider.notifier).setGenderError(true);
  } else if (globalKey.currentState!.validate() && gender != 3 && !isBirthdateToday(birthdate)) {
    ref.watch(patientProvider.notifier).addNewPatient(fullname, gender, birthdate, contactNumber, schoolName, schoolId);
    Navigator.push(context, FluentPageRoute(builder: (context) => const LeftCamera()));
  }
}

bool isBirthdateToday(DateTime birthdate) {
  DateTime today = DateTime.now();
  return birthdate.day == today.day &&
      birthdate.month == today.month &&
      birthdate.year == today.year;
}
