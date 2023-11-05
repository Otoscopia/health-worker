import 'package:flutter/services.dart';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

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
      ],
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
