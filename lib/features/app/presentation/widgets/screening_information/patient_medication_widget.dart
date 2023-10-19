import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class PatientMedicationWidget extends ConsumerWidget {
  const PatientMedicationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool medicationError = ref.watch(medicationErrorProvider);
    bool medication = ref.watch(takingMedicationProvider) == 0;
    return Column(
      children: [
        const PatientTakingMedication(),
        if (medicationError) const PatientTakingMedicationError(),
        largeHeight,
        if (medication == true) const Medication(),
      ],
    );
  }
}
