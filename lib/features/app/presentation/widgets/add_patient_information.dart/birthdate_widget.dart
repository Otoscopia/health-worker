import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class BirthdateWidget extends ConsumerWidget {
  const BirthdateWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return DatePicker(
      fieldOrder: const [
        DatePickerField.month,
        DatePickerField.day,
        DatePickerField.year
      ],
      header: birthdayLabel,
      onChanged: (value) {
        ref.watch(birthdateProvider.notifier).setBirthdate(value);
        ref.watch(birthdateErrorProvider.notifier).setBirthdateError(false);
      },
      selected: ref.watch(birthdateProvider) ?? DateTime.now(),
    );
  }
}
