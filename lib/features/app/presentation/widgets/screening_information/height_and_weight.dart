import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';

import 'package:health_worker/core/constants/constants.dart';

class HeightAndWeight extends StatelessWidget {
  const HeightAndWeight(
      {super.key,
      required this.heightController,
      required this.weightController});

  final TextEditingController heightController, weightController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: "$height (inches)",
            child: TextFormBox(
              controller: heightController,
              placeholder: "$height (inches)",
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid $height";
                }
                return null;
              },
            ),
          ),
        ),
        largeWidth,
        Expanded(
          child: InfoLabel(
            label: "$weight (kilo)",
            child: TextFormBox(
              controller: weightController,
              placeholder: "$weight (kilo)",
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid $weight";
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}
