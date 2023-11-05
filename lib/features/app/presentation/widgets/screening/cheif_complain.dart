import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class CheifComplain extends ConsumerWidget {
  const CheifComplain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<bool> checked = ref.watch(cheifComplainProvider);
    return InfoLabel(
      label: cheifComplainLabel,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          complains.length,
          (index) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(complains[index]),
                    const SizedBox(width: 16),
                    Checkbox(
                      checked: checked[index],
                      onChanged: (value) {
                        ref
                            .watch(cheifComplainProvider.notifier)
                            .setState(index, value);
                        ref
                            .watch(cheifComplainErrorProvider.notifier)
                            .setState(false);
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
