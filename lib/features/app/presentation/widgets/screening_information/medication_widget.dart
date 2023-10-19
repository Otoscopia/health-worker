import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class Medication extends ConsumerWidget {
  const Medication({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      labelStyle: const TextStyle(),
      label: medicationTypeLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.length < 5) {
            return medicationTypeError;
          }
          return null;
        },
        onChanged: (value) =>
            ref.watch(medicationProvider.notifier).setState(value),
        placeholder: medicationTypePlaceholder,
      ),
    );
  }
}
