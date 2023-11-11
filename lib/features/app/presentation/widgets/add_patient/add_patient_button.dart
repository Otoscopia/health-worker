import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
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
          addPatient(context, ref, globalKey);
        },
      ),
    );
  }
}

bool isBirthdateToday(DateTime birthdate) {
  DateTime today = DateTime.now();
  final bool day = birthdate.day == today.day;
  final bool month = birthdate.month == today.month;
  final bool year = birthdate.year == today.year;
  return day && month && year;
}

void addPatient(BuildContext context, WidgetRef ref, GlobalKey<FormState> validate) async {
  int gender = ref.read(genderProvider);
  DateTime birthdate = ref.read(birthdateProvider);

  bool checkpoint = validate.currentState!.validate() && gender != 3 && !isBirthdateToday(birthdate);

  if (checkpoint) {
    ref.read(patientProvider.notifier).addPatient();

    Navigator.push(context, FluentPageRoute(builder: (context) => const LeftCamera()));
  } else {
    if (validate.currentState!.validate()) {}
    if (gender == 3) {
      ref.read(genderErrorProvider.notifier).setGenderError(true);
    }
    if (isBirthdateToday(birthdate)) {
      ref.read(birthdateErrorProvider.notifier).setBirthdateError(true);
    }
  }
}
