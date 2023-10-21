import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/features/app/data/models/patient_model.dart";
import "package:health_worker/features/app/data/models/screening_model.dart";

import "table_widgets/material_widget.dart";

class TableWidget extends ConsumerWidget {
  final List<PatientModel> patientList;
  final List<ScreeningModel> screeningList;
  const TableWidget({super.key, required this.patientList, required this.screeningList});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      backgroundColor: transparent,
      borderColor: transparent,
      child: SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: MaterialWidget(patientList: patientList, screeningList: screeningList),
            ),
          ),
        ),
      ),
    );
  }
}
