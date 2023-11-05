import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:ionicons/ionicons.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/app/domain/use_cases/encrypt_use_case.dart";
import "package:health_worker/features/app/presentation/providers/add_screening_provider.dart";
import "package:health_worker/features/features.dart";

class ScreeningInformation extends ConsumerWidget {
  const ScreeningInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final key = GlobalKey<FormState>();

    return ApplicationContainer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      TitleWidget(
                        icon: closeButtonIcon,
                        title: diagnosisTitle,
                        popUpContent: false,
                        onPressed: () => Navigator.pop(context),
                      ),
                      largeHeight,
                      const ExaminerAndDate(),
                      largeHeight,
                      const IllnessAndComment(),
                      largeHeight,
                      const TemperatureAndBlood(),
                      largeHeight,
                      const HeightAndWeight(),
                      largeHeight,
                      const SimilarConditionWidget(),
                      largeHeight,
                      const CheifComplainWidget(),
                      largeHeight,
                      const PatientAllergiesWidget(),
                      largeHeight,
                      const PatientUndergoSurgeryWidget(),
                      largeHeight,
                      const PatientMedicationWidget(),
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                tooltip: "Submit Screening Information",
                right: 16,
                bottom: 16,
                icon: const Icon(Ionicons.checkmark),
                onPressed: () {
                  addScreeningInformation(context, ref, key);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

addScreeningInformation(BuildContext context, WidgetRef ref, GlobalKey<FormState> key) async {
  String historyOfIllness = ref.read(historyOfIllnessProvider);
  String healthWorkerComment = ref.read(healthWorkerCommentProvider);
  String temperature = ref.read(temperaturenessProvider);
  String height = ref.read(heightProvider);
  String weight = ref.read(weightProvider);
  String similarCondition = ref.read(similarConditionProvider) == 1 ? "true" : "false";
  List<bool> cheifComplains = ref.read(cheifComplainProvider);
  String chiefComplainStrings = List.generate(cheifComplains.length, (index) => checker(cheifComplains, index)).toString();
  List<String> arrayComplain = chiefComplainStrings.substring(1, chiefComplainStrings.length - 1).split(", ");
  Iterable<String> nonEmptyComplains = arrayComplain.where((complain) => complain.isNotEmpty);
  String joinedComplains = nonEmptyComplains.toList().asMap().entries.map((entry) {
    final index = entry.key;
    final complain = entry.value;
    if (index == nonEmptyComplains.length - 1) {
      return complain;
    } else if (index == nonEmptyComplains.length - 2) {
      return '$complain and';
    } else {
      return '$complain,';
    }
  }).join(' ');
  String otherComplains = ref.read(otherComplainProvider);
  String allergies = ref.read(haveAllergiesProvider) == 1 ? "true" : "false";
  String surgicalProcedure = ref.read(undergoSurgeryProvider) == 1 ? "true" : "false";
  String medication = ref.read(takingMedicationProvider) == 1 ? "true" : "false";
  String medicationComment = ref.read(medicationProvider);

  final EncryptUseCase encrypt = EncryptUseCase(repository: applicationRepository);

  ScreeningEntity screening = ScreeningEntity(
      id: uuid.v4(),
      patient: ref.read(patientProvider).id,
      assignment: "ref.read(assignmentProvider).first.id",
      historyOfIllness: encrypt.execute(data: historyOfIllness),
      healthWorkerRemarks: encrypt.execute(data: healthWorkerComment),
      temperature: encrypt.execute(data: temperature),
      height: encrypt.execute(data: height),
      weight: encrypt.execute(data: weight),
      hasSimilarCondition: encrypt.execute(data: similarCondition),
      chiefComplaint: encrypt.execute(data: joinedComplains),
      chiefComplaintMessage: otherComplains.isEmpty ? "" : encrypt.execute(data: otherComplains),
      hasAllergies: encrypt.execute(data: allergies),
      // TODO: [OT-34] Create type of allergies input box
      typeOfAllergies: encrypt.execute(data: "TO BE CONTINUED"),
      undergoSurgery: encrypt.execute(data: surgicalProcedure),
      takingMedication: encrypt.execute(data: medication),
      takingMedicationMessage: medicationComment.isEmpty ? "" : encrypt.execute(data: medicationComment),
      status: encrypt.execute(data: "Pending"));

  ref.read(screeningProvider.notifier).setScreening(screening);

  if (key.currentState!.validate() && similarCondition.isNotEmpty && cheifComplains.contains(true) || (cheifComplains.contains(true) && otherComplains.isEmpty) && allergies.isNotEmpty && surgicalProcedure.isNotEmpty && (medication.isNotEmpty && medicationComment.isNotEmpty)) {
    Navigator.push(context, FluentPageRoute(builder: ((context) => const ReviewInformation())));
  } else {
    if (key.currentState!.validate()) {}
    if (similarCondition.isEmpty) {
      ref.read(similarConditionErrorProvider.notifier).setState(true);
    }
    if (!cheifComplains.contains(true)) {
      ref.read(cheifComplainErrorProvider.notifier).setState(true);
    }
    if (allergies.isEmpty) {
      ref.read(haveAllergiesErrorProvider.notifier).setState(true);
    }
    if (surgicalProcedure.isEmpty) {
      ref.read(surgeryErrorProvider.notifier).setState(true);
    }
    if (medication.isEmpty) {
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
