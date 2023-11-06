import 'package:flutter/services.dart';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';
class HeightAndWeight extends ConsumerWidget {
  const HeightAndWeight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        InfoLabel(
          label: height,
          child: TextFormBox(
            onChanged: (value) =>
                ref.watch(heightProvider.notifier).setState(value),
            placeholder: height,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: 3,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  double.parse(value) > 300) {
                return heightError;
              }

              return null;
            },
          ),
        ),
        largeHeight,
        InfoLabel(
          label: weight,
          child: TextFormBox(
            onChanged: (value) =>
                ref.watch(weightProvider.notifier).setState(value),
            placeholder: weight,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d{0,3}(\.\d{0,2})?')), WeightFormatter()],
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: 4,
            validator: (value) {
              if (value == null ||
                  value.isEmpty) {
                return weightError;
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}

class WeightFormatter extends TextInputFormatter {
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
