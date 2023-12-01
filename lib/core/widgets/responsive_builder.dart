import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

/// A widget for building a responsive UI based on screen breakpoints.
///
/// The [ResponsiveBuilder] class simplifies the process of creating a responsive
/// layout by utilizing the [ResponsiveBreakpoints] widget from the Responsive 
/// Framework package. It allows you to define different layouts for mobile, tablet, and
/// desktop breakpoints, adapting the UI based on the available screen width.
///
/// Example usage:
/// ```dart
/// import 'responsive_builder.dart';
///
/// //* Use ResponsiveBuilder to create a responsive UI.
/// ResponsiveBuilder(child: MyResponsiveWidget()),
/// ```
class ResponsiveBuilder extends ConsumerWidget {
  /// The child widget to be rendered within the responsive builder.
  final Widget child;

  /// Constructor for the ResponsiveBuilder widget.
  ///
  /// The [child] parameter is required and represents the widget to be displayed
  /// within the responsive builder.
  const ResponsiveBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use Fluent UI's ResponsiveBreakpoints to build the responsive UI.
    return ResponsiveBreakpoints.builder(
      // Build the responsive UI using the child widget.
      child: child,
      // Define the breakpoints for mobile, tablet, and desktop.
      breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 1100, name: TABLET),
        const Breakpoint(start: 1101, end: double.infinity, name: DESKTOP),
      ],
    );
  }
}
