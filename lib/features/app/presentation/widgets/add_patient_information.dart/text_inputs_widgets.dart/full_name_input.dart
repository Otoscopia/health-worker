import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/services.dart";

import "package:health_worker/core/constants/constants.dart";

class FullNameInput extends StatelessWidget {
  const FullNameInput({
    super.key,
    required this.fullName,
  });

  final TextEditingController fullName;

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: fullNameLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        placeholder: fullNamePlaceholder,
        controller: fullName,
        maxLength: 50,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
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
