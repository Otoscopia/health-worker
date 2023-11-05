import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:intl/intl.dart";

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';


class ExaminerAndDate extends ConsumerWidget {
  const ExaminerAndDate({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String examiner = ref.read(userProvider).name;
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: dateOfExamination,
            child: TextFormBox(
              placeholder: DateFormat("MMM dd, y").format(DateTime.now()),
              readOnly: true,
            ),
          ),
        ),
        largeWidth,
        Expanded(
          child: InfoLabel(
            label: examinerLabel,
            child: TextFormBox(
              placeholder: examiner,
              readOnly: true,
            ),
          ),
        ),
      ],
    );
  }
}
