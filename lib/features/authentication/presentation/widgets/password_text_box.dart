import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/constants/constants.dart";

class PasswordTextBox extends ConsumerWidget {
  const PasswordTextBox({
    super.key,
    required this.password,
  });

  final TextEditingController password;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: passwordLabel,
      child: PasswordBox(
        placeholder: passwordLabel,
        foregroundDecoration:
            const BoxDecoration(border: Border.fromBorderSide(BorderSide.none)),
        controller: password,
      ),
    );
  }
}
