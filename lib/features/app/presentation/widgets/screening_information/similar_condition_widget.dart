import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/exports.dart';

class SimilarConditionWidget extends ConsumerWidget {
  const SimilarConditionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool similarConditionError = ref.watch(similarConditionErrorProvider);
    return Column(
      children: [
        const SimilarCondition(),
        if (similarConditionError) const SimilarConditionError(),
      ],
    );
  }
}
