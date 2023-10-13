import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/presentation/providers/screening_provider.dart';

class PatientSimilarCondition extends ConsumerStatefulWidget {
  const PatientSimilarCondition({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientSimilarConditionState();
}

class _PatientSimilarConditionState
    extends ConsumerState<PatientSimilarCondition> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
            "Has the patient been treated for a similar condition or had any injuries to the same area in the past?"),
        const SizedBox(width: 16),
        Row(
          children: List.generate(2, (index) {
            var label = ["Yes", "No"];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RadioButton(
                checked: selected == index,
                content: Text(label[index]),
                onChanged: (changed) {
                  debugPrint("a: $changed");
                  if (changed) {
                    setState(() {
                      selected = index;
                    });

                    ref.watch(screeningProvider.notifier).setProvider(
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        null,
                        null,
                        null,
                        null,
                        null,
                        selected == 0 ? true : false,
                        null,
                        null);
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
