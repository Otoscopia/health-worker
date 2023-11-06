import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientHaveAllergies extends ConsumerWidget {
  const PatientHaveAllergies({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: patientAllergyTitle,
      child: Row(
        children: List.generate(
          2,
          (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RadioButton(
                checked: ref.watch(haveAllergiesProvider) == index,
                content: Text(label[index]),
                onChanged: (changed) {
                  if (changed) {
                    ref.watch(haveAllergiesProvider.notifier).setState(index);
                    ref
                        .watch(haveAllergiesErrorProvider.notifier)
                        .setState(false);
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
