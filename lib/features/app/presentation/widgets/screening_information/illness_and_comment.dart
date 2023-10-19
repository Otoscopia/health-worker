import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class IllnessAndComment extends ConsumerWidget {
  const IllnessAndComment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: historyOfIllness,
            child: TextFormBox(
              placeholder: historyOfIllness,
              inputFormatters: [filterText],
              validator: (value) => validatorFunction(value, illnessError),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) =>
                  ref.watch(historyOfIllnessProvider.notifier).setState(value),
              maxLines: 3,
              minLines: 1,
            ),
          ),
        ),
        largeWidth,
        Expanded(
          child: InfoLabel(
            label: healthWorkerComment,
            child: TextFormBox(
              placeholder: healthWorkerComment,
              inputFormatters: [filterText],
              validator: (value) => validatorFunction(value, healthWorkerCommentError),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) => ref.watch(healthWorkerCommentProvider.notifier).setState(value),
              maxLines: 3,
              minLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}

validatorFunction(String? value, String error) {
  if (value == null || value.length < 5) {
    return error;
  }
  return null;
}
