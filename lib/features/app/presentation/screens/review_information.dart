import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';
import 'package:health_worker/features/app/presentation/providers/future_table_provider.dart';

class ReviewInformation extends ConsumerWidget {
  const ReviewInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool editRecord = ref.watch(editRecordProvider);

    return ApplicationContainer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: HorizontalScroll(
          child: editRecord ? const EditRecord() : const ReviewRecord(),
        ),
      ),
    );
  }
}

class EditRecord extends ConsumerWidget {
  const EditRecord({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const HorizontalScroll(
      child: Column(
        children: [
          Expanded(child: AddPatient()),
          Expanded(child: ScreeningInformation())
        ],
      ),
    );
  }
}

class EditRecordNotifier extends StateNotifier<bool> {
  EditRecordNotifier() : super(false);

  void toggle() => state = !state;
}

final editRecordProvider = StateNotifierProvider<EditRecordNotifier, bool>(
    (ref) => EditRecordNotifier());

class ReviewRecord extends ConsumerWidget {
  const ReviewRecord({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserEntity user = ref.read(userProvider);

    final ScreeningEntity screening = ref.read(screeningProvider);

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

    List<String> leftImageIds =
        List.generate(leftImageFiles.length, (index) => uuid.v4().toString());

    List<String> rightImageIds =
        List.generate(rightImageFiles.length, (index) => uuid.v4().toString());

    Future.wait(
      leftImageFiles.map(
        (file) async {
          var index = 0;
          await cloud.createFile(
              bucketId: Env.screeningBucket,
              fileId: leftImageIds[index],
              file: InputFile.fromPath(path: file.path));

          index++;
        },
      ),
    );

    Future.wait(
      rightImageFiles.map(
        (file) async {
          var index = 0;
          await cloud.createFile(
              bucketId: Env.screeningBucket,
              fileId: rightImageIds[index],
              file: InputFile.fromPath(path: file.path));
          index++;
        },
      ),
    );

    return Column(
      children: [
        const TitleWidget(
          icon: closeButtonIcon,
          title: "Review Medical Record",
          popUpContent: false,
        ),
        mediumHeight,
        const Divider(),
        largeHeight,
        const ProgressButtons(status: 5),
        largeHeight,
        const PatientInformationWidget(),
        largeHeight,
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
                      const HealthRecordTitle(),
                      mediumHeight,
                      CustomRichText(title: performedBy, value: user.name),
                      CustomRichText(
                        title: performedAtLabel,
                        value: DateFormat("MMM. dd, y").format(DateTime.now()),
                      ),
                    ],
                  ),
                  // FilledButton(
                  //     child: const Text("Edit Medical Record"),
                  //     onPressed: () =>
                  //         ref.read(editRecordProvider.notifier).toggle())
                ],
              ),
              largeHeight,
              CustomRichText(
                  title: historyOfIllness, value: screening.historyOfIllness),
              CustomRichText(
                  title: complainsLabel, value: screening.chiefComplaint),
              if (screening.chiefComplaintMessage.isNotEmpty)
                CustomRichText(
                    title: generalComplains,
                    value: screening.chiefComplaintMessage),
              largeHeight,
              CustomRichText(
                  title: patientAllergyTitle, value: screening.hasAllergies),
              CustomRichText(
                  title: patientSimilarConditionTitle,
                  value: screening.hasSimilarCondition),
              CustomRichText(
                  title: patientSurgicalTitle, value: screening.undergoSurgery),
              CustomRichText(
                  title: patientMedication, value: screening.takingMedication),
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
              Center(
                child: FilledButton(
                  style: ButtonStyle(
                      padding: ButtonState.all(const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 8))),
                  onPressed: () async {
                    PatientEntity patient = ref.read(patientProvider);
                    List<UserEntity> doctor = ref.read(doctorsProvider);
                    List<SchoolEntity> school = ref.read(schoolsProvider);

                    final int age = DateTime.now().year -
                        DateTime.parse(patient.birthdate).year;
                    final UserEntity patientDoctor = doctor
                        .where((element) => element.id == patient.doctor)
                        .first;
                    final SchoolEntity patientSchool = school
                        .where((element) => element.id == patient.school)
                        .first;

                    TableEntity record = TableEntity(
                        patientId: patient.id,
                        name: patient.name,
                        age: age.toString(),
                        gender: patient.gender,
                        status: "Pending",
                        doctor: patientDoctor.name,
                        school: patientSchool.name);

                    ref.read(tableRecordsProvider.notifier).add(record);
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text("Submit Medical Record"),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
