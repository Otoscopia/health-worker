import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/services.dart";

import "package:health_worker/core/constants/constants.dart";

class ContactNumberInput extends StatelessWidget {
  const ContactNumberInput({
    super.key,
    required this.contactNumber,
  });

  final TextEditingController contactNumber;

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: contactNumberLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        placeholder: contactNumberPlaceholder,
        controller: contactNumber,
        maxLength: 11,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,

        validator: (value) {
          if (value == null || value.isEmpty || value.length != 11) {
            return contactNumberErrorOne;
          } else if (!value.startsWith("09")) {
            return contactNumberErrorTwo;

          }
          return null;
        },
      ),
    );
  }
}