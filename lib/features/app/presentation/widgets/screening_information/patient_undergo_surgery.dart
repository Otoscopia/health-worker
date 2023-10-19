import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/exports.dart';

class PatientUndergoSurgery extends ConsumerWidget {
  const PatientUndergoSurgery({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Text("Does the patient undergo any surgical procedure in the past?"),
        const SizedBox(width: 16),
        Row(
          children: List.generate(2, (index) {
            var label = ["Yes", "No"];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RadioButton(
                checked: ref.watch(undergoSurgeryProvider) == index,
                content: Text(label[index]),
                onChanged: (changed) {
                  if (changed) {
                    ref.watch(undergoSurgeryProvider.notifier).setState(index);
                    ref.watch(surgeryErrorProvider.notifier).setState(false);
                  }
                },
              ),
            );
          }),
        )
      ],
    );
  }
}
