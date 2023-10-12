import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/services.dart";

import "package:health_worker/core/constants/constants.dart";

class SchoolNameInput extends StatelessWidget {
  const SchoolNameInput({
    super.key,
    required this.schoolName,
  });

  final TextEditingController schoolName;

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: schoolNameLabel,
      child: TextFormBox(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        placeholder: schoolNamePlaceholder,
        controller: schoolName,
        maxLength: 64,
        maxLines: 1,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        unfocusedColor: Colors.transparent,
        validator: (value) {
          if (value == null || value.isEmpty || value.length <= 5) {
            return schoolNameError;
          }
          return null;
        },
      ),
    );
  }
}
