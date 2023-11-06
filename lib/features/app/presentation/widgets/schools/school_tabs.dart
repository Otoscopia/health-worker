import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/app.dart';

class SchoolTab extends ConsumerWidget {
  const SchoolTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabView(
      closeButtonVisibility: CloseButtonVisibilityMode.always,
      closeDelayDuration: Duration.zero,
      currentIndex: 0,
      // onChanged: (index) => ref.read(dashboardTabProvider.notifier).setTab(index),
      // onReorder: (oldIndex, newIndex) => ref.read(dashboardTabProvider.notifier).setTabOrder(oldIndex, newIndex),
      shortcutsEnabled: true,
      showScrollButtons: true,
      tabs: schoolTabs,
      tabWidthBehavior: TabWidthBehavior.equal,
    );
  }
}

List<Tab> schoolTabs = [
  Tab(
      text: const Text("Assigned Schools"),
      body: const School(),
      closeIcon: null,
      icon: const Icon(FluentIcons.home),
      semanticLabel: "Assigned Schools"),
];