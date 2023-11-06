import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import 'package:health_worker/features/app/presentation/widgets/doctors/doctors_tab.dart';
import 'package:health_worker/features/app/presentation/widgets/patients/patients_tabs.dart';
import 'package:health_worker/features/app/presentation/widgets/schools/school_tabs.dart';
import 'package:health_worker/features/features.dart';

const String pageTitle = 'Otoscopia';
const String dashboardText = 'Dashboards';
const String patientText = 'Patients';
const String nurseText = 'Nurses';
const String schoolsText = 'Schools';

const String searchPatientText = "Search For Someone";

List<NavigationPaneItem> dashboard
  = [
    PaneItem(
      icon: const Icon(FluentIcons.view_dashboard),
      title: const Text(dashboardText),
      body: const DashboardTab(),
    ),
    PaneItemSeparator(),
    PaneItem(
      icon: const Icon(FluentIcons.issue_tracking),
      title: const Text(patientText),
      body: const PatientTab(),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.e_discovery),
      title: const Text("Schools"),
      body: const SchoolTab(),
    ),
    PaneItem(
      icon: const Icon(Ionicons.git_network_outline),
      title: const Text("Doctors"),
      body: const DoctorTab(),
    ),
  ];

List<Tab> dashboardTabs = [
  Tab(
      text: const Text("Home"),
      body: const Home(),
      closeIcon: null,
      icon: const Icon(FluentIcons.home),
      semanticLabel: "Home"),
];

List<NavigationPaneItem> footerItems(WidgetRef ref) {
  return [
    PaneItemSeparator(),
    PaneItem(
      icon: const Icon(FluentIcons.settings),
      title: const Text('Settings'),
      body: const Settings(),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.player_settings),
      title: const Text('Profie'),
      body: const AccountInformation(),
    ),
    PaneItemAction(
      icon: const Icon(FluentIcons.power_button),
      title: const Text('Logout'),
      onTap: () {
        ref.read(authenticationStateProvider.notifier).signOut();
      },
    )
  ];
}
