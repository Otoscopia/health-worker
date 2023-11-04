import "package:flutter/services.dart";

import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";


class GuardiansFullNameInput extends ConsumerWidget {
  const GuardiansFullNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: guardiansNameLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        placeholder: guardiansNameLabel,
        inputFormatters: [nameFilter],
        maxLength: 50,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
        onChanged: (value) => ref.watch(guardianFullnameProvider.notifier).setFullname(value),
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
