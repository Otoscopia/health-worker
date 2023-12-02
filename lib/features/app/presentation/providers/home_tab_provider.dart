import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class TabNotifier extends StateNotifier<TabEntity> {
  StateNotifierProviderRef<TabNotifier, TabEntity> ref;
  TabNotifier(this.ref) : super(TabEntity(current: 0, length: 1, tabs: tabs));

  setTab(int index) {
    state = TabEntity(current: index, length: tabs.length, tabs: tabs);
  }

  setTabOrder(int oldIndex, int newIndex) {
    int currentIndex = state.current;
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = tabs.removeAt(oldIndex);
    tabs.insert(newIndex, item);

    if (currentIndex == newIndex) {
      currentIndex = oldIndex;
    } else if (currentIndex == oldIndex) {
      currentIndex = newIndex;
    }

    state = TabEntity(current: currentIndex, length: tabs.length, tabs: tabs);
  }

  newTab(String name, TableEntity table) {
    final existingIndex = tabs.indexWhere((tab) {
      Text tabTitle = tab.text as Text;
      return tabTitle.data == name;
    });

    if (existingIndex != -1) {
      state =
          TabEntity(current: existingIndex, length: tabs.length, tabs: tabs);
      return;
    }

    Tab generateTab(int index) {
      late Tab tab;
      tab = Tab(
          text: Text(name),
          semanticLabel: name,
          icon: const FlutterLogo(),
          body: PatientRecord(table: table),
          onClosed: () {
            state = TabEntity(
                current: state.current,
                length: tabs.length,
                tabs: tabs..remove(tab));
            ref.read(recordTabProvider.notifier).resetTabs();
          });
      return tab;
    }

    final tab = generateTab(tabs.length + 1);
    tabs.add(tab);
    state =
        TabEntity(current: tabs.length - 1, length: tabs.length, tabs: tabs);
  }
}

final tabProvider =
    StateNotifierProvider<TabNotifier, TabEntity>((ref) => TabNotifier(ref));
