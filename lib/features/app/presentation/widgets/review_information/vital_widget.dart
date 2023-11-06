import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/app.dart';

class VitalContainerWidget extends ConsumerWidget {
  const VitalContainerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weight = ref.read(screeningProvider).weight;
    final height = ref.read(screeningProvider).height;
    final temperature = ref.read(screeningProvider).temperature;
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        VitalCard(index: 0, amount: "$weight kg"),
        VitalCard(index: 1, amount: "$height cm"),
        VitalCard(index: 2, amount: "$temperature°C"),
      ],
    );
  }
}
