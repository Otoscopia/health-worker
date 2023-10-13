import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';

import 'package:health_worker/core/constants/constants.dart';

class TemperatureAndBlood extends StatelessWidget {
  const TemperatureAndBlood({
    super.key,
    required this.temperatureController,
    required this.bloodPressureController,
  });

  final TextEditingController temperatureController, bloodPressureController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: temperature,
            child: TextFormBox(
              controller: temperatureController,
              suffix: temperatureIcon,
              placeholder: "$temperature in °C",
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: 4,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid temperature";
                }
                return null;
              },
            ),
          ),
        ),
        largeWidth,
        Expanded(
          child: InfoLabel(
            label: bloodPressure,
            child: TextFormBox(
              controller: bloodPressureController,
              suffix: bloodPressureIcon,
              placeholder: "$bloodPressure mmHg (120/90)",
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: 7,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid blood pressure";
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
