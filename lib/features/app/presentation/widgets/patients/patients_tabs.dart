import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/app.dart';

class PatientTab extends ConsumerWidget {
  const PatientTab({super.key});

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
      tabs: patientTabs,
      tabWidthBehavior: TabWidthBehavior.equal,
    );
  }
}

List<Tab> patientTabs = [
  Tab(
      text: const Text("Patients"),
      body: const Patient(),
      closeIcon: null,
      icon: const Icon(FluentIcons.home),
      semanticLabel: "Patients"),
];