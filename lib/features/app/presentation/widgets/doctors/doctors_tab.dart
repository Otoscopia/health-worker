import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/app.dart';

class DoctorTab extends ConsumerWidget {
  const DoctorTab({super.key});

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
      tabs: doctorTabs,
      tabWidthBehavior: TabWidthBehavior.equal,
    );
  }
}

List<Tab> doctorTabs = [
  Tab(
      text: const Text("Doctors"),
      body: const Doctors(),
      closeIcon: null,
      icon: const Icon(FluentIcons.home),
      semanticLabel: "Doctors"),
];