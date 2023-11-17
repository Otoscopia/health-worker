import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class ScreeningInformation extends ConsumerWidget {
  final ScreeningEntity screening;
  const ScreeningInformation({super.key, required this.screening});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApplicationContainer(
      child: Center(
        child: Text(screening.id),
      ),
    );
  }
}
