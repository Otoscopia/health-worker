import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/authentication/exports.dart";

class PasswordTextBox extends ConsumerWidget {
  const PasswordTextBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: passwordLabel,
      child: PasswordBox(
        placeholder: passwordLabel,
        foregroundDecoration: const BoxDecoration(border: Border.fromBorderSide(BorderSide.none)),
        onChanged: (value) => ref.watch(passwordProvider.notifier).setPassword(value),
      ),
    );
  }
}
