import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class OtherComplain extends ConsumerWidget {
  const OtherComplain({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      labelStyle: const TextStyle(),
      label: otherComplainLabel,
      child: TextFormBox(
        placeholder: otherComplainPlaceholder,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) =>
            ref.watch(otherComplainProvider.notifier).setState(value),
        inputFormatters: [filterText],
        validator: (value) {
          if (value == null || value.length < 5) {
            return otherComplainError;
          }
          return null;
        },
      ),
    );
  }
}
