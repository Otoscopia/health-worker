import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:path_provider/path_provider.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/themes/colors.dart';
import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/core/widgets/container_box.dart';
import 'package:health_worker/features/app/presentation/providers/patient_information_provider.dart';
import 'package:health_worker/features/app/presentation/providers/screening_provider.dart';
import 'package:health_worker/features/app/presentation/widgets/review_information/rich_text.dart';
import 'package:health_worker/features/authentication/presentation/providers/application_provider.dart.dart';

class ReviewInformation extends ConsumerWidget {
  const ReviewInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String examiner = ref.watch(applicationProvider).name!;
    String patientName = ref.watch(patientProvider).fullName;
    String patientBirthdate = ref.watch(patientProvider).birthdate;
    String formattedBirthdate =
        DateFormat('MMMM d, y').format(DateTime.parse(patientBirthdate));
    int patientAge =
        DateTime.now().year - DateTime.parse(patientBirthdate).year;
    String patientGender = ref.watch(patientProvider).gender;
    String patientSchool = ref.watch(patientProvider).schoolName;
    String patientContactNumber = ref.watch(patientProvider).contactNumber;
    String screenedOn = DateFormat('MMM d, y').format(DateTime.now());
    String cheifComplains = ref.watch(screeningProvider).complains;
    double weight = ref.watch(screeningProvider).weight;
    double height = ref.watch(screeningProvider).height;
    double temperature = ref.watch(screeningProvider).temperature;
    double bloodPressure = ref.watch(screeningProvider).bloodPressure;

    String? generalComplains =
        ref.watch(screeningProvider).chiefComplainMessage;
    String frameOfInterest = ref.watch(screeningProvider).frameOfInterest;

    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: IconButton(
                            style: ButtonStyle(iconSize: ButtonState.all(32)),
                            icon: const Icon(Ionicons.close_outline),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Text("Review Record").bold().fontSize(16)
                      ],
                    ),
                    mediumHeight,
                    const Divider(),
                    largeHeight,
                    Card(
                      borderColor: transparent,
                      child: Row(
                        children: [
                          const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GFAvatar(size: 64),
                                SizedBox(height: 16),
                                Text("Initial Diagnosis")
                              ]),
                          Expanded(
                            child: ListTile(
                              title: Text(patientName).bold(),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomRichText(
                                      title: "Birthday",
                                      value: formattedBirthdate),
                                  CustomRichText(
                                      title: "Age",
                                      value: patientAge.toString()),
                                  CustomRichText(
                                      title: "Gender", value: patientGender),
                                  CustomRichText(
                                      title: "School", value: patientSchool),
                                  CustomRichText(
                                      title: "Contact Number",
                                      value: patientContactNumber),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Card(
                      backgroundColor: darkBackgroundAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Health Record ",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                              children: [
                                const TextSpan(
                                  text: "(Initial Diagnosis Status: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: "Pending",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 14),
                                ),
                                const TextSpan(
                                  text: ")",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          CustomRichText(
                              title: "Performed By", value: examiner),
                          CustomRichText(title: "Date", value: screenedOn),
                          largeHeight,
                          CustomRichText(
                              title: "Cheif Complains", value: cheifComplains),
                          if (generalComplains != null &&
                              generalComplains.isNotEmpty)
                            CustomRichText(
                                title: "General Complain",
                                value: generalComplains),
                          CustomRichText(
                              title: "Frame of Interest",
                              value: frameOfInterest),
                          const SizedBox(height: 16),
                          const Text("Vitals").fontSize(16).bold(),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Ionicons.barbell),
                                    const SizedBox(width: 8),
                                    Column(
                                      children: [
                                        const Text("Weight"),
                                        Text("$weight kg").bold(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Ionicons.body),
                                    const SizedBox(width: 8),
                                    Column(
                                      children: [
                                        const Text("Height"),
                                        Text("$height cm").bold(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Ionicons.thermometer),
                                    const SizedBox(width: 8),
                                    Column(
                                      children: [
                                        const Text("Temperature"),
                                        Text("$temperature°C").bold(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Ionicons.eyedrop_outline),
                                    const SizedBox(width: 8),
                                    Column(
                                      children: [
                                        const Text("Blood Pressure"),
                                        Text("$bloodPressure mmHg").bold(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Text(
                                  "Does the patient have any allergies?"),
                              const SizedBox(width: 16),
                              Checkbox(
                                checked: false,
                                onChanged: (value) {},
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                  "Does the patient undergo any surgical procedure in the past?"),
                              const SizedBox(width: 16),
                              Checkbox(
                                checked: true,
                                onChanged: (value) {},
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                  "Does the patient currently taking any medication?"),
                              const SizedBox(width: 16),
                              Checkbox(
                                checked: true,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: FilledButton(
                              child: const Text("Submit"),
                              onPressed: () {
                                Navigator.popUntil(
                                    context, (route) => route.isFirst);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<List<FileSystemEntity>> fetchLeftAssets(String uid) async {
  final tempDir = await getApplicationDocumentsDirectory();
  final Directory dir = Directory("${tempDir.path}\\Otoscopia\\$uid");
  var imageFiles = dir.listSync();

  return imageFiles;
}
