import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';

class HealthRecordTitle extends ConsumerWidget {
  const HealthRecordTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text.rich(
      TextSpan(
        text: healthRecordTitle,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        children: [
          const TextSpan(
            text: initialTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          TextSpan(
            text: initialStatus,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 14),
          ),
          const TextSpan(
            text: initialEnd,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
