import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientTakingMedication extends ConsumerWidget {
  const PatientTakingMedication({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: patientMedication,
      child: Row(
        children: List.generate(
          2,
          (index) {
            var label = ["Yes", "No"];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RadioButton(
                checked: ref.watch(takingMedicationProvider) == index,
                content: Text(label[index]),
                onChanged: (changed) {
                  if (changed) {
                    ref
                        .watch(takingMedicationProvider.notifier)
                        .setState(index);
                    ref.watch(medicationErrorProvider.notifier).setState(false);
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
