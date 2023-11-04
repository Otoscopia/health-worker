import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class DashboardNavigation extends ConsumerWidget {
  const DashboardNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationView(
      appBar: const NavigationAppBar(
        automaticallyImplyLeading: false,
        actions: ApplicationHeader(),
      ),
      pane: NavigationPane(
        displayMode: PaneDisplayMode.compact,
        size: const NavigationPaneSize(openMaxWidth: 200),
        selected: ref.watch(dashboardPageProvider),
        onChanged: (index) => ref.read(dashboardPageProvider.notifier).setNav(index),
        items: dashboard,
        footerItems: footerItems(ref),
      ),
    );
  }
}