import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/features/app/presentation/pages/left_camera.dart';
import 'package:health_worker/features/app/presentation/providers/patient_information_provider.dart';

class AddPatientButton extends ConsumerWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController fullName, contactNumber, schoolName, schoolID;

  final bool? genderError;
  final bool? birthdateError;
  final String gender;
  final String birthdate;

  const AddPatientButton({
    super.key,
    required this.globalKey,
    required this.fullName,
    required this.gender,
    required this.birthdate,
    required this.contactNumber,
    required this.schoolName,
    required this.schoolID,
    this.genderError,
    this.birthdateError,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var patientRef = ref.watch(patientProvider.notifier);
    return SizedBox(
      width: 150,
      child: FilledButton(
        child: const Text(continueLabel),
        onPressed: () {
          onPressCheckpoint(patientRef, context);
        },
      ),
    );
  }

  void onPressCheckpoint(PatientNotifier patientRef, BuildContext context) {
    if (birthdate.isEmpty || isBirthdateToday(birthdate)) {
      patientRef.setBirthdate("", true);
    } else if (gender.isEmpty) {
      patientRef.setGender("", true);
    } if (globalKey.currentState!.validate() && genderError == false && birthdateError == false) {
      patientRef.setPatientInformation(fullName.text, gender, birthdate, schoolName.text, schoolID.text);

    Navigator.push(context, FluentPageRoute(builder: (context) => const LeftCamera()));
      
    }
  }
}

bool isBirthdateToday(String birthdate) {
  DateTime today = DateTime.now();
  DateTime birthday = DateTime.parse(birthdate);
  return birthday.day == today.day &&
      birthday.month == today.month &&
      birthday.year == today.year;
}
