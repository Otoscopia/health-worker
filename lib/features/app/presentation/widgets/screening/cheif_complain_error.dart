import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class CheifComplainError extends ConsumerWidget {
  const CheifComplainError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: SizedBox(width: double.infinity, child: invalidComplain),
    );
  }
}

class PatientHaveAllergiesError extends ConsumerWidget {
  const PatientHaveAllergiesError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: SizedBox(width: double.infinity, child: invalidAllergy),
    );
  }
}

class PatientUndegoSurgeryError extends ConsumerWidget {
  const PatientUndegoSurgeryError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: SizedBox(width: double.infinity, child: invalidSurgery),
    );
  }
}

class PatientTakingMedicationError extends ConsumerWidget {
  const PatientTakingMedicationError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: SizedBox(width: double.infinity, child: invalidMedication),
    );
  }
}
