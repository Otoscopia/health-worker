import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/domain/usestate/post_medical_record.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/exports.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';

class ReviewInformation extends ConsumerWidget {
  const ReviewInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final examiner = ref.read(userProvider).name;
    final performedAt = DateTime.now();
    final cheifComplain = ref.read(screeningProvider).cheifComplain;
    List<String> arrayComplain = cheifComplain.substring(1, cheifComplain.length - 1).split(", ");
    // final List<String> arrayComplain = jsonDecode(cheifComplain).cast<String>();
    final nonEmptyComplains = arrayComplain.where((complain) => complain.isNotEmpty);
    final joinedComplains =
        nonEmptyComplains.toList().asMap().entries.map((entry) {
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
    final historyOfIllnessComment =
        ref.read(screeningProvider).historyOfIllness;
    final healthWorkerCommentReview =
        ref.read(screeningProvider).healthWorkerComment;
    final generalComplain = ref.read(screeningProvider).chiefComplainMessage;
    final frameOfInteres = ref.read(screeningProvider).frameOfInterest;
    final hasAllergies = ref.read(screeningProvider).hasAllergies;
    final similarCondition = ref.read(screeningProvider).hasSimilarCondition;
    final takingMedication =
        ref.read(screeningProvider).patientTakingMedication;
    final takingMedicationMessage =
        ref.read(screeningProvider).patientTakingMedicationMessage;
    final undergoSurgery = ref.read(screeningProvider).patientUndergoSurgery;
    String filePath = ref.watch(screeningProvider).filePath;
    final Directory dir = Directory(filePath);
    var leftImageFiles = dir
        .listSync()
        .where((element) =>
            element.path.contains('left-') && element.path.endsWith("jpeg"))
        .toList();
    var rightImageFiles = dir
        .listSync()
        .where((element) =>
            element.path.contains('right-') && element.path.endsWith("jpeg"))
        .toList();
    // var leftVideoFiles = dir
    //     .listSync()
    //     .where((element) =>
    //         element.path.contains('left-') && element.path.endsWith('mp4'))
    //     .toList();
    // var rightVideoFiles = dir
    //     .listSync()
    //     .where((element) =>
    //         element.path.contains('right-') && element.path.endsWith('mp4'))
    //     .toList();

    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                      largeWidth,
                      revewTitle
                    ],
                  ),
                  mediumHeight,
                  const Divider(),
                  largeHeight,
                  const PatientInformationWidget(),
                  largeHeight,
                  Card(
                    borderColor: transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HealthRecordTitle(),
                        mediumHeight,
                        CustomRichText(title: performedBy, value: examiner),
                        CustomRichText(
                            title: performedAtLabel,
                            value:
                                DateFormat("MMM. dd, y").format(performedAt)),
                        largeHeight,
                        CustomRichText(
                            title: historyOfIllness,
                            value: historyOfIllnessComment),
                        CustomRichText(
                            title: complainsLabel, value: joinedComplains),
                        if (generalComplain != null &&
                            generalComplain.isNotEmpty)
                          CustomRichText(
                              title: generalComplains, value: generalComplain),
                        largeHeight,
                        CustomRichText(
                            title: patientAllergyTitle,
                            value: bool.parse(hasAllergies) ? "Yes" : "No"),
                        CustomRichText(
                            title: patientSimilarConditionTitle,
                            value: bool.parse(similarCondition) ? "Yes" : "No"),
                        CustomRichText(
                            title: patientSurgicalTitle,
                            value: bool.parse(undergoSurgery) ? "Yes" : "No"),
                        CustomRichText(
                            title: patientMedication,
                            value: bool.parse(takingMedication) ? "Yes" : "No"),
                        if (takingMedicationMessage != null &&
                            takingMedicationMessage.isNotEmpty)
                          CustomRichText(
                              title: "Medication Status",
                              value: takingMedicationMessage),
                        largeHeight,
                        CustomRichText(
                            title: healthWorkerComment,
                            value: healthWorkerCommentReview),
                        CustomRichText(
                            title: frameOfInterest, value: frameOfInteres),
                        largeHeight,
                        const Text("Left Ears Images").fontSize(16).bold(),
                        SizedBox(
                            height: 210,
                            child: ResponsiveGridList(
                                minItemsPerRow: 3,
                                maxItemsPerRow: 6,
                                minItemWidth: 250,
                                children: leftImageFiles
                                    .map((e) => Image.file(File(e.path)))
                                    .toList())),
                        largeHeight,
                        const Text("Left Ears Videos (BUG)")
                            .fontSize(16)
                            .bold(),

                        // SizedBox(
                        //     height: 400,
                        //     child: ResponsiveGridList(
                        //         maxItemsPerRow: 3,
                        //         minItemWidth: 250,
                        //         children: leftVideoFiles
                        //             .map((e) => VideoWidget(url: File(e.path)))
                        //             .toList())),
                        largeHeight,
                        const Divider(),
                        largeHeight,
                        const Text("Right Ears").fontSize(16).bold(),
                        largeHeight,
                        SizedBox(
                            height: 210,
                            child: ResponsiveGridList(
                                minItemsPerRow: 3,
                                maxItemsPerRow: 6,
                                minItemWidth: 250,
                                children: rightImageFiles
                                    .map((e) => Image.file(File(e.path)))
                                    .toList())),
                        const Text("Right Ears Videos (BUG)")
                            .fontSize(16)
                            .bold(),
                        // SizedBox(
                        //     height: 400,
                        //     child: ResponsiveGridList(
                        //         maxItemsPerRow: 3,
                        //         minItemWidth: 250,
                        //         children: rightVideoFiles
                        //             .map((e) => VideoWidget(url: File(e.path)))
                        //             .toList())),
                        // mediumHeight,
                        largeHeight,
                        Center(
                          child: FilledButton(
                            child: const Text("Submit"),
                            onPressed: () async {
                              uploadMedicalRecord(ref).then((value) => Navigator.popUntil(context, (route) => route.isFirst));
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
    );
  }
}
