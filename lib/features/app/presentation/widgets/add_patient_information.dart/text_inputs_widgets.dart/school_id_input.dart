import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/services.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";

class SchoolIdInput extends ConsumerWidget {
  const SchoolIdInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: schoolIDLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        placeholder: schoolIDPlaceholder,
        maxLength: 12,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9\-]')),],
        onChanged: (value) => ref.watch(schoolIdProvider.notifier).setSchoolId(value),
        validator: (value) {
          if (value == null || value.isEmpty || value.length <= 5) {
            return schoolIDError;
          }
          return null;
        },
      ),
    );
  }
}
