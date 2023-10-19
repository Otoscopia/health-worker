import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';

import 'package:health_worker/features/app/exports.dart';

addScreeningInformation(BuildContext context, WidgetRef ref,
    Directory directory, GlobalKey<FormState> key) async {
  String historyOfIllness = ref.read(historyOfIllnessProvider);
  String healthWorkerComment = ref.read(healthWorkerCommentProvider);
  String frameOfInterest = ref.read(frameOfInterestCommentProvider);
  String temperature = ref.read(temperaturenessProvider);
  String bloodPressure = ref.read(bloodPressureProvider);
  String height = ref.read(heightProvider);
  String weight = ref.read(weightProvider);
  int similarCondition = ref.read(similarConditionProvider);
  List<bool> cheifComplains = ref.read(cheifComplainProvider);
  List<String> chiefComplainStrings = List.generate(
      cheifComplains.length, (index) => checker(cheifComplains, index));
  String otherComplains = ref.read(otherComplainProvider);
  int allergies = ref.read(haveAllergiesProvider);
  int surgicalProcedure = ref.read(undergoSurgeryProvider);
  int medication = ref.read(takingMedicationProvider);
  String medicationComment = ref.read(medicationProvider);

  if (key.currentState!.validate() &&
          similarCondition != 3 &&
          cheifComplains.contains(true) ||
      (cheifComplains.contains(true) && otherComplains.isEmpty) &&
          allergies != 3 &&
          surgicalProcedure != 3 &&
          medication != 3 &&
          (medication == 1 && medicationComment.isNotEmpty)) {
    Navigator.push(context,
        FluentPageRoute(builder: ((context) => const ReviewInformation())));
    await ref.read(screeningProvider.notifier).setProvider(
      uuid.v4(),
        historyOfIllness,
        healthWorkerComment,
        frameOfInterest,
        temperature,
        bloodPressure,
        height,
        weight,
        similarCondition,
        chiefComplainStrings,
        otherComplains,
        allergies,
        surgicalProcedure,
        medication,
        medicationComment,
        directory.path,
        ref);
  } else {
    if (key.currentState!.validate()) {}
    if (similarCondition == 3) {
      ref.read(similarConditionErrorProvider.notifier).setState(true);
    }
    if (!cheifComplains.contains(true)) {
      ref.read(cheifComplainErrorProvider.notifier).setState(true);
    }
    if (allergies == 3) {
      ref.read(haveAllergiesErrorProvider.notifier).setState(true);
    }
    if (surgicalProcedure == 3) {
      ref.read(surgeryErrorProvider.notifier).setState(true);
    }
    if (medication == 3) {
      ref.read(medicationErrorProvider.notifier).setState(true);
    }
  }
}

checker(List<bool> cheifComplains, int index) {
  if (cheifComplains[index]) {
    switch (index) {
      case 0:
        return "Ear Pain";
      case 1:
        return "Hearing Loss";
      case 2:
        return "Tinnittus";
      case 3:
        return "Ear Discharge";
      case 4:
        return "Others";
      default:
        return "";
    }
  } else {
    return "";
  }
}
