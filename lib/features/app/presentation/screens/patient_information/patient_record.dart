import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

late TableEntity selectedTable;

class PatientRecord extends ConsumerWidget {
  final TableEntity table;
  const PatientRecord({super.key, required this.table});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    selectedTable = table;

    return TabView(
      currentIndex: ref.watch(recordTabProvider).current,
      tabs: patientTabs,
      shortcutsEnabled: true,
      closeDelayDuration: const Duration(seconds: 0),
      onChanged: (index) => ref.read(recordTabProvider.notifier).setTab(index),
      tabWidthBehavior: TabWidthBehavior.equal,
      closeButtonVisibility: CloseButtonVisibilityMode.always,
      showScrollButtons: true,
      onReorder: (oldIndex, newIndex) {
        ref.read(recordTabProvider.notifier).setTabOrder(oldIndex, newIndex);
      },
    );
  }
}

List<Tab> patientTabs = [
  Tab(
    text: const Text("Patient Record"),
    body: const Test(),
    closeIcon: null,
    icon: const Icon(FluentIcons.home),
    semanticLabel: homePageTitle,
  ),
];

class Test extends ConsumerWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get patient
    final PatientEntity patient =
        ref.read(patientProvider.notifier).findPatient(selectedTable.patientId);

    // Get screenings
    final List<ScreeningEntity> screening =
        ref.read(screeningProvider.notifier).getScreeningRecords(patient.id);

    // Get school
    final SchoolEntity school =
        ref.read(schoolsProvider.notifier).findSchool(patient.school);

    return ApplicationContainer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            HorizontalScroll(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      PatientSummary(patient: patient, school: school.name),
                      mediumHeight,
                      const TextSubtitle("List of Medical Records"),
                      mediumHeight,
                      Column(
                        children: screening.map(
                          (record) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    final DateTime date =
                                        DateTime.parse(record.createdAt);
                                    final String recordDate =
                                        DateFormat("MMM dd, y").format(date);
                                    ref
                                        .read(recordTabProvider.notifier)
                                        .newTab(recordDate, record);
                                  },
                                  child: ScreeningRecord(screening: record),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              icon: FluentIcons.add,
              bottom: 16,
              right: 0,
              tooltip: homeTooltip,
              onPressed: () => Navigator.push(
                context,
                FluentPageRoute(builder: (context) => const AddPatient()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecordTabNotifier extends StateNotifier<TabEntity> {
  RecordTabNotifier()
      : super(TabEntity(
            current: 0, length: patientTabs.length, tabs: patientTabs));

  setTab(int index) {
    state = TabEntity(
        current: index, length: patientTabs.length, tabs: patientTabs);
  }

  setTabOrder(int oldIndex, int newIndex) {
    int currentIndex = state.current;
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = patientTabs.removeAt(oldIndex);
    patientTabs.insert(newIndex, item);

    if (currentIndex == newIndex) {
      currentIndex = oldIndex;
    } else if (currentIndex == oldIndex) {
      currentIndex = newIndex;
    }

    state = TabEntity(
        current: currentIndex, length: patientTabs.length, tabs: patientTabs);
  }

  newTab(String name, ScreeningEntity record) {
    final existingIndex = patientTabs.indexWhere((tab) {
      Text tabTitle = tab.text as Text;
      return tabTitle.data == name;
    });

    if (existingIndex != -1) {
      state = TabEntity(
          current: existingIndex,
          length: patientTabs.length,
          tabs: patientTabs);
      return;
    }

    Tab generateTab(int index) {
      late Tab tab;

      tab = Tab(
          text: Text(name),
          semanticLabel: name,
          icon: const FlutterLogo(),
          body: ScreeningInformation(name: name, screening: record),
          onClosed: () => state = TabEntity(
              current: state.current,
              length: patientTabs.length,
              tabs: patientTabs..remove(tab)));
      return tab;
    }

    final tab = generateTab(patientTabs.length + 1);
    patientTabs.add(tab);

    state = TabEntity(
        current: patientTabs.length - 1,
        length: patientTabs.length,
        tabs: patientTabs);
  }

  resetTabs() {
    List<Tab> tab = patientTabs.sublist(0, 1);
    state = TabEntity(current: 0, length: tab.length, tabs: tab);
  }
}

final recordTabProvider = StateNotifierProvider<RecordTabNotifier, TabEntity>(
    (ref) => RecordTabNotifier());
