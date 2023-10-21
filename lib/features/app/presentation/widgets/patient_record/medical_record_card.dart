import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/information_container.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/medical_record/doctors_note.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/medical_record/nurse_note.dart';
import 'package:ionicons/ionicons.dart';
import 'package:styled_widget/styled_widget.dart';

class MedicalRecordCard extends ConsumerWidget {
  final ScreeningModel record;
  const MedicalRecordCard({super.key, required this.record});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var icons = {
          'Initial': Ionicons.medical_outline,
          'Medical': Ionicons.warning_sharp,
          'Pending': Ionicons.time_outline,
          'Verified': Ionicons.checkmark_circle_outline,
        }[record.status] ??
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
                InformationContainer(record: record),
                NurseNote(note: record.healthWorkerComment),
                if (record.status == "Verified") DoctorsNote(record: record),
              ],
            ),
          )
        ],
      ),
    );
  }
}
