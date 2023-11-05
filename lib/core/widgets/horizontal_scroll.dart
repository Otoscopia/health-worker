import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalScroll extends ConsumerWidget {
  final Widget child;
  const HorizontalScroll({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScrollBehavior behavior = ScrollConfiguration.of(context).copyWith(scrollbars: false);

    return ScrollConfiguration(
      behavior: behavior,
      child: SingleChildScrollView(child: child),
    );
  }
}
