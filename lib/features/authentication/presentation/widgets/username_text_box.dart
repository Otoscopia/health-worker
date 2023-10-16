import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/authentication/domain/provider/email_provider.dart";

class UsernameTextBox extends ConsumerWidget {
  const UsernameTextBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: usernameLabel,
      child: TextFormBox(
        placeholder: usernameLabel,
        expands: false,
        onChanged: (value) => ref.watch(usernameProvider.notifier).setUsername(value),
        decoration: const BoxDecoration(border: Border.fromBorderSide(BorderSide.none)),
      ),
    );
  }
}
