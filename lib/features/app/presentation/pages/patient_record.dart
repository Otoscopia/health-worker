import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/medical_list.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/patient_card.dart';

class PatientRecord extends ConsumerWidget {
  final PatientModel patient;
  const PatientRecord({super.key, required this.patient});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TitleWidget(
                icon: closeButtonIcon,
                title: patient.fullName,
                popUpContent: false,
              ),
              const Divider(),
              Expanded(
                child: Row(
                  children: [
                    PatientCard(patient: patient),
                    const Divider(direction: Axis.vertical),
                    MedicalList(uid: patient.uid),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
