import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import 'package:health_worker/features/features.dart';

const String pageTitle = 'Otoscopia';
const String dashboardText = 'Dashboards';
const String patientText = 'Patients';
const String nurseText = 'Nurses';
const String doctorsText = 'Doctors';
const String schoolsText = 'Schools';

const String searchPatientText = "Search For Someone";

List<NavigationPaneItem> navigationItems = [
  PaneItem(
    icon: const Icon(FluentIcons.view_dashboard),
    title: const Text(dashboardText),
    body: const Home(),
  ),
  PaneItemSeparator(),
  PaneItem(
    icon: const Icon(FluentIcons.issue_tracking),
    title: const Text(patientText),
    body: const Patients(),
  ),
  PaneItem(
    icon: const Icon(FluentIcons.e_discovery),
    title: const Text(schoolsText),
    body: const Schools(),
  ),
  PaneItem(
    icon: const Icon(Ionicons.git_network_outline),
    title: const Text(doctorsText),
    body: const Doctors(),
  ),
];

List<NavigationPaneItem> navigationFooter(WidgetRef ref) {
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
    ),
    PaneItemSeparator(),
  ];
}
