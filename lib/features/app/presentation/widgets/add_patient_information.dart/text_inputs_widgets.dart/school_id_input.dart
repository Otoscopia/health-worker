import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/services.dart";

import "package:health_worker/core/constants/constants.dart";

class SchoolIdInput extends StatelessWidget {
  const SchoolIdInput({
    super.key,
    required this.schoolID,
  });

  final TextEditingController schoolID;

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: schoolIDLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        placeholder: schoolIDPlaceholder,
        controller: schoolID,
        maxLength: 12,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
        validator: (value) {
          if (value == null || value.isEmpty || value.length <= 5) {
            return schoolIDError;
          }
          return null;
        },
      ),
    );
  }
}
