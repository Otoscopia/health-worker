import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/constants/constants.dart";

class EmailTextBox extends ConsumerWidget {
  const EmailTextBox({
    super.key,
    required this.email,
  });

  final TextEditingController email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: emailLabel,
      child: TextFormBox(
        placeholder: emailLabel,
        expands: false,
        controller: email,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty || !value.contains("@")) {
            return "Please add a valid email address";
          }

          return null;
        },
        decoration:
            const BoxDecoration(border: Border.fromBorderSide(BorderSide.none)),
      ),
    );
  }
}
