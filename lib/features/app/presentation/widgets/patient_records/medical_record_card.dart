import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_records/information_container.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_records/medical_record/nurse_note.dart';
import 'package:health_worker/features/features.dart';

class ScreeningRecord extends ConsumerWidget {
  final ScreeningEntity screening;
  const ScreeningRecord({super.key, required this.screening});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var icons = {
          'Initial': Ionicons.medical_outline,
          'Medical': Ionicons.warning_sharp,
          'Pending': Ionicons.time_outline,
          'Verified': Ionicons.checkmark_circle_outline,
        }[screening.status] ??
        Ionicons.warning_sharp;

    Icon icon = Icon(icons).iconSize(32).iconColor(Colors.red.light);

    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          mediumWidth,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InformationContainer(record: screening),
                NurseNote(note: screening.healthWorkerRemarks),
                // if (screening.status == "Verified") DoctorsNote(record: screening),
              ],
            ),
          )
        ],
      ),
    );
  }
}
