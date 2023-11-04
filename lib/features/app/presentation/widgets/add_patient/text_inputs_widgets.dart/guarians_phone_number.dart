import "package:flutter/services.dart";

import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";

class ContactNumberInput extends ConsumerWidget {
  const ContactNumberInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: guardiansPhoneLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly, ContactNumberFormatter()],
        placeholder: guardiansPhonePlaceholder,
        maxLength: 13,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
        onChanged: (value) =>
            ref.watch(contactNumberProvider.notifier).setContactNumber(value), validator: (value) {
          if (value == null || value.isEmpty) {
            return contactNumberErrorOne;
          } else if (value.length > 2 && !value.startsWith("09")) {
            return contactNumberErrorTwo;
          } else if (value.length != 13) {
            return contactNumberErrorOne;
          }
          return null;
        },
      ),
    );
  }
}

class ContactNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newString = newValue.text;
    final buffer = StringBuffer();

    for (var i = 0; i < newString.length; i++) {
      if (i == 4 || i == 7) {
        buffer.write('-');
      }
      buffer.write(newString[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}