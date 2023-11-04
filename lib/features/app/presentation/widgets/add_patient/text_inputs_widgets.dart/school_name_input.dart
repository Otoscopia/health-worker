import "package:flutter/services.dart";

import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";

class SchoolNameInput extends ConsumerWidget {
  const SchoolNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: schoolNameLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        placeholder: schoolNamePlaceholder,
        maxLength: 64,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z -]'))],
        onChanged: (value) => ref.watch(schoolNameProvider.notifier).setSchoolName(value),
        validator: (value) {
          if (value == null || value.isEmpty || value.length <= 5) {
            return schoolNameError;
          }
          return null;
        },
      ),
    );
  }
}
