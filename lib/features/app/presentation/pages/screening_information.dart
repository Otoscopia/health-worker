import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:health_worker/features/app/presentation/providers/screening_provider.dart";
import "package:intl/intl.dart";
import "package:ionicons/ionicons.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/core/constants/constants.dart";
import "package:health_worker/core/widgets/container_box.dart";
import "package:health_worker/features/app/presentation/pages/review_information.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/examiner_and_date.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/frame_of_interest.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/height_and_weight.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/illness_and_comment.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/patient_have_allergies.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/patient_similar_condition.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/patient_taking_medication.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/patient_undergo_surgery.dart";
import "package:health_worker/features/app/presentation/widgets/screening_information/temperature_and_blood.dart";
import "package:health_worker/features/authentication/presentation/providers/application_provider.dart.dart";

class ScreeningInformation extends ConsumerStatefulWidget {
  const ScreeningInformation({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScreeningInformationState();
}

class _ScreeningInformationState extends ConsumerState<ScreeningInformation> {
  final key = GlobalKey<FormState>();
  var today = DateFormat('MMM dd, yy | HH:mm').format(DateTime.now());
  TextEditingController historyOfIllness = TextEditingController();
  TextEditingController healthWorkerComment = TextEditingController();
  TextEditingController frameOfInterest = TextEditingController();
  TextEditingController temperature = TextEditingController();
  TextEditingController bloodPressure = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController otherComplain = TextEditingController();
  TextEditingController typeOfMedication = TextEditingController();

  var complains = [
    "Ear Pain",
    "Hearing Loss",
    "Tinnittus",
    "Ear Discharge",
    "Others"
  ];
  int? complain;
  bool complainError = false;
  bool? similarInjury = false;
  bool similarInjuryError = false;
  bool? allergies = false;
  bool allergiesError = false;
  bool? surgicalPast = false;
  bool surgicalPastError = false;
  bool medicationError = false;
  var check = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    String user = ref.watch(applicationProvider).name!;
    bool? medication = ref.watch(screeningProvider).patientTakingMedication;
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
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
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: IconButton(
                                style:
                                    ButtonStyle(iconSize: ButtonState.all(32)),
                                icon: const Icon(Ionicons.close_outline),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Text("Diagnosis Information Form")
                                .bold()
                                .fontSize(16)
                          ],
                        ),
                        largeHeight,
                        ExaminerAndDate(today: today, user: user),
                        largeHeight,
                        IllnessAndComment(
                            illness: historyOfIllness,
                            comment: healthWorkerComment),
                        largeHeight,
                        FrameOfInterest(
                            frameOfInterestController: frameOfInterest),
                        largeHeight,
                        TemperatureAndBlood(
                            temperatureController: temperature,
                            bloodPressureController: bloodPressure),
                        largeHeight,
                        HeightAndWeight(
                            heightController: height, weightController: weight),
                        largeHeight,
                        const PatientSimilarCondition(),
                        largeHeight,
                        InfoLabel(
                          label: "Cheif Complain",
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              complains.length,
                              (index) {
                                return Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Text(complains[index]),
                                        const SizedBox(width: 16),
                                        Checkbox(
                                          checked: check[index],
                                          onChanged: (value) {
                                            debugPrint("$value, $index");
                                            setState(() {
                                              complainError = false;
                                              check[index] = (value == true
                                                  ? value
                                                  : false)!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        if (check[4] == true)
                          InfoLabel(
                            labelStyle: const TextStyle(),
                            label: "Other Complain",
                            child: TextFormBox(
                              controller: otherComplain,
                              placeholder: "Write the complain of the patient",
                            ),
                          ),
                        if (complainError)
                          SizedBox(
                              width: double.infinity,
                              child: const Text(
                                      "Please check some of the cheif complains")
                                  .fontWeight(FontWeight.w100)
                                  .textColor(Colors.red.lighter)),
                        const SizedBox(height: 16),
                        const PatientHaveAllergies(),
                        const SizedBox(height: 16),
                        const PatientUndergoSurgery(),
                        const SizedBox(height: 16),
                        const PatientTakingMedication(),
                        const SizedBox(height: 16),
                        if (medication == true)
                          InfoLabel(
                            labelStyle: const TextStyle(),
                            label: "Type of Medication",
                            child: TextFormBox(
                              controller: typeOfMedication,
                              placeholder:
                                  "Type of Medication and it's duration",
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 16,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: IconButton(
                      style: ButtonStyle(
                          iconSize: ButtonState.all(32),
                          backgroundColor: ButtonState.resolveWith(
                            (states) {
                              if (states.isHovering) {
                                return primary;
                              }
                              return null;
                            },
                          )),
                      icon: const Icon(Ionicons.checkmark),
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          ref.watch(screeningProvider.notifier).setProvider(
                              historyOfIllness.text,
                              healthWorkerComment.text,
                              frameOfInterest.text,
                              check.toString(),
                              otherComplain.text,
                              typeOfMedication.text,
                              double.parse(temperature.text),
                              double.parse(bloodPressure.text),
                              double.parse(height.text),
                              double.parse(weight.text),
                              null,
                              null,
                              null,
                              null);
                          // TODO save screening information to the database
                          Navigator.push(
                              context,
                              FluentPageRoute(
                                  builder: (context) =>
                                      const ReviewInformation()));
                        } else {
                          setState(() {
                            complainError = true;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
