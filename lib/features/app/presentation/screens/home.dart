import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Card(
      child: Stack(
        children: [
          HomeTable(),
          FloatingActionButton(
            icon: Icon(FluentIcons.add),
            tooltip: homeTooltip,
            route: AddPatient(),
          )
        ],
      ),
    );
  }
}
