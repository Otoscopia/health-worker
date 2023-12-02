import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class Application extends ConsumerWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationView(
      appBar: const NavigationAppBar(
        automaticallyImplyLeading: false,
        actions: ApplicationHeader(),
      ),
      pane: NavigationPane(
        toggleable: false,
        displayMode: PaneDisplayMode.compact,
        size: const NavigationPaneSize(openMaxWidth: 200),
        selected: ref.watch(applicationProvider),
        onChanged: (index) {
          ref.read(applicationProvider.notifier).setNav(index);
        },
        items: navigationItems,
        footerItems: navigationFooter(ref),
      ),
    );
  }
}
