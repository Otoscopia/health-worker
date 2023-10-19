import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/exports.dart';

class PatientAllergiesWidget extends ConsumerWidget {
  const PatientAllergiesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool haveAllergiesError = ref.watch(haveAllergiesErrorProvider);
    return Column(
      children: [
        const PatientHaveAllergies(),
        if (haveAllergiesError) const PatientHaveAllergiesError(),
      ],
    );
  }
}
