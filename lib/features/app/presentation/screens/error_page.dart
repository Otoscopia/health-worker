import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class ErrorPage extends ConsumerWidget {
  final Object? errorStatus;
  const ErrorPage({super.key, required this.errorStatus});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApplicationContainer(
      child: Center(
        child: Text(errorStatus.toString()),
      ),
    );
  }
}
