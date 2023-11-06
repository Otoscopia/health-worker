import "package:flutter/services.dart";

import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/config/config.dart";
import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";


class FullNameInput extends ConsumerWidget {
  const FullNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.read(fullnameProvider);
    return InfoLabel(
      label: fullNameLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: value,
        placeholder: fullNamePlaceholder,
        inputFormatters: [nameFilter],
        maxLength: 50,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: transparent,
        onChanged: (value) => ref.read(fullnameProvider.notifier).setFullname(value),
        validator: (value) {
          if (value == null || value.isEmpty || value.length <= 5) {
            return fullNameError;
          }
          return null;
        },
      ),
    );
  }
}
