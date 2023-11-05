import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class ApplicationContainer extends ConsumerWidget {
  final Widget child;
  const ApplicationContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldPage(
      padding: noPadding,
      content: OfflineBuilder(
        connectivityBuilder: (context, value, child) {
          final bool connected = value != ConnectivityResult.none;

          WidgetsBinding.instance.addPostFrameCallback((_) {
            ref.read(networkProvider.notifier).setNetwork(connected);
          });

          return Stack(
            fit: StackFit.expand,
            children: [child, OfflineBar(connected: connected)],
          );
        },
        child: Column(
          children: [Expanded(child: child)],
        ),
      ),
    );
  }
}
