import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/presentation/providers/dashboard_tab_provider.dart';

class DashboardTab extends ConsumerWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabView(
      closeButtonVisibility: CloseButtonVisibilityMode.always,
      closeDelayDuration: Duration.zero,
      currentIndex: ref.read(dashboardTabProvider).current,
      onChanged: (index) => ref.read(dashboardTabProvider.notifier).setTab(index),
      onReorder: (oldIndex, newIndex) => ref.read(dashboardTabProvider.notifier).setTabOrder(oldIndex, newIndex),
      shortcutsEnabled: true,
      showScrollButtons: true,
      tabs: dashboardTabs,
      tabWidthBehavior: TabWidthBehavior.equal,
    );
  }
}
