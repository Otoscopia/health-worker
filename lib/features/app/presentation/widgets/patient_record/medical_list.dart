import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/medical_record_card.dart';
import 'package:styled_widget/styled_widget.dart';

class MedicalList extends ConsumerWidget {
  final String uid;
  const MedicalList({super.key, required this.uid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref.watch(screeningListProvider.future),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingAnimation();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          List<ScreeningModel> records = snapshot.data!.where((element) => element.owner == uid).toList();
          List<ScreeningModel> list = records.sublist(0, records.length - 1).toList();
          ScreeningModel recent = records.last;

          return Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Recent Medical Record").fontSize(24).bold(),
                  mediumHeight,
                  MedicalRecordCard(record: recent),
                  if (list.length > 1)
                    const Text("Old Medical Record").fontSize(24).bold(),
                  largeHeight,
                  if (list.length > 1)
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: ScrollConfiguration(
                          behavior: ScrollConfiguration.of(context)
                              .copyWith(scrollbars: false),
                          child: ListView(
                            children: list.map((record) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                child: MedicalRecordCard(record: record),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
