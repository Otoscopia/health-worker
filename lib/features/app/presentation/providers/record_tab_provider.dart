import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/dashboard_constants.dart';
import 'package:health_worker/features/app/app.dart';
import 'package:health_worker/features/app/presentation/providers/patient_information.dart';

class TabNotifier extends StateNotifier<TabEntity> {
  TabNotifier() : super(TabEntity(current: 0, length: 1, tabs: dashboardTabs));

  setTab(int index) {
    state = TabEntity(current: index, length: dashboardTabs.length, tabs: dashboardTabs);
  }

  setTabOrder(int oldIndex, int newIndex) {
    int currentIndex = state.current;
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = dashboardTabs.removeAt(oldIndex);
    dashboardTabs.insert(newIndex, item);

    if (currentIndex == newIndex) {
      currentIndex = oldIndex;
    } else if (currentIndex == oldIndex) {
      currentIndex = newIndex;
    }

    state = TabEntity(current: currentIndex, length: dashboardTabs.length, tabs: dashboardTabs);
  }

  newTab(String name) {
    final existingIndex = dashboardTabs.indexWhere((tab) {
      Text tabTitle = tab.text as Text;
      return tabTitle.data == name;
    });

    if (existingIndex != -1) {
      state =
          TabEntity(current: existingIndex, length: dashboardTabs.length, tabs: dashboardTabs);
      return;
    }

    Tab generateTab(int index) {
      late Tab tab;
      tab = Tab(
          text: Text(name),
          semanticLabel: name,
          icon: const FlutterLogo(),
          body: const PatientInformationTab(),
          onClosed: () => state = TabEntity(
              current: state.current,
              length: dashboardTabs.length,
              tabs: dashboardTabs..remove(tab)));
      return tab;
    }

    final tab = generateTab(dashboardTabs.length + 1);
    dashboardTabs.add(tab);
    state =
        TabEntity(current: dashboardTabs.length - 1, length: dashboardTabs.length, tabs: dashboardTabs);
  }
}

final tabProvider =
    StateNotifierProvider<TabNotifier, TabEntity>((ref) => TabNotifier());
