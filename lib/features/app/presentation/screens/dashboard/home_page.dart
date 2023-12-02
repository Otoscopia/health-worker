import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';

/// The home page of the application, displaying a stack of tabs and a floating
/// action button for adding patients.
///
/// The [Home] class is a [ConsumerWidget] that builds a widget tree containing a
/// [TabView] with shortcuts, allowing users to switch between different tabs.
/// It also includes a [FloatingActionButton] with the FluentIcons.add icon,
/// providing quick access to the patient addition feature via a navigation to
/// the [AddPatient] page.
///
/// Example usage:
/// ```dart
/// //* Display the home page in the application.
/// Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
/// ```
class Home extends ConsumerWidget {
  /// Default constructor for the [Home] class.
  ///
  /// Accepts an optional [key] parameter that can be used to identify this widget
  /// in the widget tree.
  const Home({super.key});

  /// Builds the widget tree for the home page.
  ///
  /// The [build] method returns a [Stack] widget containing a [TabView] and a
  /// [FloatingActionButton]. The [TabView] enables navigation between different
  /// tabs, and the [FloatingActionButton] triggers the navigation to the
  /// [AddPatient] page when pressed.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabView(
      shortcutsEnabled: false,
      closeDelayDuration: const Duration(seconds: 0),
      tabs: tabs,
      currentIndex: ref.watch(tabProvider).current,
      onChanged: (index) => ref.read(tabProvider.notifier).setTab(index),
      tabWidthBehavior: TabWidthBehavior.equal,
      closeButtonVisibility: CloseButtonVisibilityMode.always,
      showScrollButtons: true,
      onReorder: (oldIndex, newIndex) {
        ref.read(tabProvider.notifier).setTabOrder(oldIndex, newIndex);
      },
    );
  }
}
