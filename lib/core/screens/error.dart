import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class ErrorScreen extends ConsumerWidget {
  final Object? error;
  const ErrorScreen({super.key, required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApplicationContainer(
      child: Center(
        child: Text(error.toString()),
      ),
    );
  }
}
