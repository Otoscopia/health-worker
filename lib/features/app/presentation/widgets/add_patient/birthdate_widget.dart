import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class BirthdateWidget extends ConsumerWidget {
  const BirthdateWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: [OT-33] Change width of the year to support the font size
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
