import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/authentication/domain/provider/email_provider.dart";

class EmailTextBox extends ConsumerWidget {
  const EmailTextBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: emailLabel,
      child: TextFormBox(
        placeholder: emailLabel,
        expands: false,
        onChanged: (value) => ref.watch(emailProvider.notifier).setEmail(value),
        decoration: const BoxDecoration(border: Border.fromBorderSide(BorderSide.none)),
      ),
    );
  }
}
