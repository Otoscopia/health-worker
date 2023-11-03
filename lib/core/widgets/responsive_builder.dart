import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ResponsiveBuilder extends ConsumerWidget {
  final Widget child;
  const ResponsiveBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.builder(
      child: child,
      breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 1100, name: TABLET),
        const Breakpoint(start: 1101, end: double.infinity, name: DESKTOP),
      ],
    );
  }
}
