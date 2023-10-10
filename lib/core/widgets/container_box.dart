import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/widgets/window_title_bar.dart';

class ContainerBox extends ConsumerWidget {
  final Widget child;
  const ContainerBox({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [const TitleBar(), Expanded(child: child)],
    );
  }
}
