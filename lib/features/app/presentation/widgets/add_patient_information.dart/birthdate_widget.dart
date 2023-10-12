import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/features/app/presentation/providers/patient_information_provider.dart';

class BirthdateWidget extends ConsumerStatefulWidget {
  final DateTime birthdate;
  const BirthdateWidget({super.key, required this.birthdate});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BirthdateWidgetState();
}

class _BirthdateWidgetState extends ConsumerState<BirthdateWidget> {
  @override
  Widget build(BuildContext context) {
    DateTime birthday = widget.birthdate;
    return DatePicker(
      fieldOrder: const [
        DatePickerField.month,
        DatePickerField.day,
        DatePickerField.year
      ],
      endDate: DateTime.now(),
      header: birthdayLabel,
      onChanged: (value) {
        setState(() {
          birthday = value;
        });

        ref.watch(patientInformationProvider.notifier).setBirthdate(birthday.toString(), false);
      },
      selected: birthday,
    );
  }
}
