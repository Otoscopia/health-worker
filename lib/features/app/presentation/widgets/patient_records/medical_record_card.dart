import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class ScreeningRecord extends ConsumerWidget {
  final ScreeningEntity screening;
  const ScreeningRecord({super.key, required this.screening});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    IoniconsData icons = {
          'Medical Attention': Ionicons.warning_sharp,
          'Pending Diagnosis': Ionicons.time_outline,
          'Final Diagnosis': Ionicons.checkmark_circle,
        }[screening.status] ??
        Ionicons.warning_sharp;

    Color color = {
          'Medical Attention': Colors.red.darker,
          'Pending Diagnosis': Colors.orange,
          'Final Diagnosis': primary,
        }[screening.status] ??
        Colors.red;

    Icon icon = Icon(icons).iconSize(32).iconColor(color);

    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Tooltip(message: screening.status, child: icon),
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
