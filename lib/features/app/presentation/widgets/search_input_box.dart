import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/exports.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/data/models/patient_model.dart';
import 'package:health_worker/features/app/presentation/pages/patient_record.dart';

class SearchBox extends ConsumerWidget {
  final String label;
  final List<AutoSuggestBoxItem<String>> items;

  const SearchBox({
    super.key,
    required this.label,
    required this.items,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoSuggestBox(
      items: items,
      leadingIcon: searchIcon,
      placeholder: label,
      clearButtonEnabled: true,
      enableKeyboardControls: true,
      unfocusedColor: transparent,
      decoration: const BoxDecoration(color: transparent, border: borderNone),
      onSelected: (value) {
        String? values = value.value;
        // TODO: [OT-11] Navigate to Patient Information Screen
        if (values != null && values.isNotEmpty) {
          Navigator.push(context, FluentPageRoute(builder: (context) => PatientRecord(patient: PatientModel.fromString(values))));
        }
      },
    );
  }
}
