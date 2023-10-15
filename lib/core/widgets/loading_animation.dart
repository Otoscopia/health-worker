import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/widgets/container_box.dart';

class LoadingAnimation extends ConsumerWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Center(
          child: ProgressRing(),
        ),
      ),
    );
  }
}
