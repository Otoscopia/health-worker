import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class ScreeningInformation extends ConsumerWidget {
  final String name;
  final ScreeningEntity screening;
  const ScreeningInformation({
    super.key,
    required this.name,
    required this.screening,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApplicationContainer(
        child: FutureBuilder(
      future: getImages(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorPage(errorStatus: snapshot.error);
        } else if (snapshot.hasData) {
          return Information(name: name, screening: screening);
        }

        return const LoadingPage();
      },
    ));
  }
}

Future getImages() async {}

class Information extends ConsumerWidget {
  final String name;
  final ScreeningEntity screening;
  const Information({
    super.key,
    required this.name,
    required this.screening,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserEntity user = ref.read(userProvider);
    final DateTime date = DateTime.parse(screening.createdAt);
    final String recordDate = DateFormat("MMM dd, y").format(date);
    final String recordedAt = DateFormat("hh:mm a").format(date);
    String filePath = "$applicationDirectory\\${ref.read(patientProvider).id}";
    final Directory dir = Directory(filePath);
    List<FileSystemEntity> leftImageFiles = dir
        .listSync()
        .where((element) =>
            element.path.contains('left-') && element.path.endsWith("jpeg"))
        .toList();

    List<FileSystemEntity> rightImageFiles = dir
        .listSync()
        .where((element) =>
            element.path.contains('right-') && element.path.endsWith("jpeg"))
        .toList();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: HorizontalScroll(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TitleWidget(
              icon: closeButtonIcon,
              title:
                  "$name Medical Record Dated on $recordDate, at $recordedAt",
              popUpContent: false,
            ),
            mediumHeight,
            const Divider(),
            mediumHeight,
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: healthRecordTitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                              children: [
                                const TextSpan(
                                  text: initialTitle,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: screening.status,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 14),
                                ),
                                const TextSpan(
                                  text: initialEnd,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          mediumHeight,
                          CustomRichText(title: performedBy, value: user.name),
                          CustomRichText(
                            title: performedAtLabel,
                            value:
                                DateFormat("MMM. dd, y").format(DateTime.now()),
                          ),
                        ],
                      ),
                    ],
                  ),
                  largeHeight,
                  CustomRichText(
                      title: historyOfIllness,
                      value: screening.historyOfIllness),
                  CustomRichText(
                      title: complainsLabel, value: screening.chiefComplaint),
                  if (screening.chiefComplaintMessage.isNotEmpty)
                    CustomRichText(
                        title: generalComplains,
                        value: screening.chiefComplaintMessage),
                  largeHeight,
                  CustomRichText(
                      title: patientAllergyTitle,
                      value: screening.hasAllergies),
                  CustomRichText(
                      title: patientSimilarConditionTitle,
                      value: screening.hasSimilarCondition),
                  CustomRichText(
                      title: patientSurgicalTitle,
                      value: screening.undergoSurgery),
                  CustomRichText(
                      title: patientMedication,
                      value: screening.takingMedication),
                  if (screening.takingMedicationMessage.isNotEmpty)
                    CustomRichText(
                        title: medicationTitle,
                        value: screening.takingMedicationMessage),
                  largeHeight,
                  CustomRichText(
                      title: healthWorkerComment,
                      value: screening.healthWorkerRemarks),
                  largeHeight,
                  const Text(leftEarTitle).fontSize(16).bold(),
                  largeHeight,
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
                  const Text(rightEarTitle).fontSize(16).bold(),
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
                  largeHeight,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
