import "dart:io";

import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:ionicons/ionicons.dart";

import "package:health_worker/config/exports.dart";
import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";

class ScreeningInformation extends ConsumerWidget {
  const ScreeningInformation({super.key, required this.directory});

  final Directory directory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final key = GlobalKey<FormState>();

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
                        TitleWidget(
                          icon: closeButtonIcon,
                          title: diagnosisTitle,
                          popUpContent: false,
                        ),
                        largeHeight,
                        const ExaminerAndDate(),
                        largeHeight,
                        const IllnessAndComment(),
                        largeHeight,
                        const FrameOfInterest(),
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
                        addScreeningInformation(context, ref, directory, key);
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
