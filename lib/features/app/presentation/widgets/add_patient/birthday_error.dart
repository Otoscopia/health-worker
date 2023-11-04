import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class BirthdayError extends ConsumerWidget {
  const BirthdayError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: SizedBox(width: double.infinity, child: invalidBirthdate),
    );
  }
}
