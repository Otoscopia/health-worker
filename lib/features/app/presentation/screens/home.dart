import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Stack(
        children: [
          const HomeTable(),
          FloatingActionButton(
            icon: const Icon(FluentIcons.add),
            tooltip: homeTooltip,
            onPressed: () => Navigator.push(context, FluentPageRoute(builder: (context) => const AddPatient())),
          )
        ],
      ),
    );
  }
}
