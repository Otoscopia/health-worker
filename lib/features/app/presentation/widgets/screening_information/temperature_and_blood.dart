import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class TemperatureAndBlood extends ConsumerWidget {
  const TemperatureAndBlood({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: InfoLabel(
            label: temperature,
            child: TextFormBox(
              onChanged: (value) =>
                  ref.watch(temperaturenessProvider.notifier).setState(value),
              suffix: temperatureIcon,
              placeholder: temperaturePlaceholder,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                    RegExp(r'^\d{0,3}(\.\d{0,1})?')),
                TemperatureFormatter()
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: 4,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return temperatureError;
                } else if (double.parse(value) < 35 ||
                    double.parse(value) > 40) {
                  return temperatureError;
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
              onChanged: (value) {
                if (value.length == 3) {
                  value += '/';
                }

                ref.watch(bloodPressureProvider.notifier).setState(value);
              },
              suffix: bloodPressureIcon,
              placeholder: bloodPressurePlaceholder,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                    RegExp(r'^\d{0,4}(\/\d{0,4})?')),
                BloodPressureFormatter()
              ],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              maxLength: 7,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return bloodPressureErrorOne;
                } else if (value.length == 3) {
                  if (int.parse(value) > 120) {
                    return bloodPressureErrorTwo;
                  }
                } else if (value.length == 7) {
                  List<String> bp = value.split('/');
                  int left = int.parse(bp[0]);
                  int right = int.parse(bp[1]);

                  if (left > 120 || right > 120) {
                    return bloodPressureErrorThree;
                  }
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

class BloodPressureFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newString = newValue.text;
    final buffer = StringBuffer();

    for (var i = 0; i < newString.length; i++) {
      if (i == 3 && !newString.contains('/')) {
        buffer.write('/');
      }
      buffer.write(newString[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

class TemperatureFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newString = newValue.text;
    final buffer = StringBuffer();

    for (var i = 0; i < newString.length; i++) {
      if (i == 2 && !newString.contains('.')) {
        buffer.write('.');
      }
      buffer.write(newString[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
