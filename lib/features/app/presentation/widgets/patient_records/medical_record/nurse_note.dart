import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class NurseNote extends ConsumerWidget {
  final String note;
  const NurseNote({super.key, required this.note});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mediumHeight,
        CustomRichText(title: "Nurse Note", value: note),
      ],
    );
  }
}
