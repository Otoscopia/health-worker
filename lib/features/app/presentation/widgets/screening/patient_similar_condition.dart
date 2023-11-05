import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class SimilarCondition extends ConsumerWidget {
  const SimilarCondition({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const Text(patientSimilarConditionTitle),
        const SizedBox(width: 16),
        Row(
          children: List.generate(2, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RadioButton(
                checked: ref.watch(similarConditionProvider) == index,
                content: Text(label[index]),
                onChanged: (changed) {
                  if (changed) {
                    ref.watch(similarConditionProvider.notifier).setState(index);
                    ref.watch(similarConditionErrorProvider.notifier).setState(false);
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
