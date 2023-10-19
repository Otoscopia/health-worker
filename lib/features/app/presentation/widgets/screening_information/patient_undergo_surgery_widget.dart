import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/exports.dart';

class PatientUndergoSurgeryWidget extends ConsumerWidget {
  const PatientUndergoSurgeryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool surgeryError = ref.watch(surgeryErrorProvider);
    return Column(
      children: [
        const PatientUndergoSurgery(),
        if (surgeryError) const PatientUndegoSurgeryError(),
      ],
    );
  }
}