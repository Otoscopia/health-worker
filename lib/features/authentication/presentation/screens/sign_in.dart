import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/authentication/authentication.dart';

/// Widget for the Sign-In page in the application.
///
/// The [SignIn] class is a [ConsumerWidget] representing the Sign-In page. It
/// includes the layout for the page, adjusting its structure based on the screen
/// size using [ResponsiveBreakpoints]. The page consists of an [ApplicationContainer]
/// containing a [ResponsiveRowColumn] with two children: [ApplicationBrandContainer]
/// and [FormContainer]. The layout is optimized for both desktop and other screen sizes.
///
/// Example usage:
/// ```dart
/// import 'sign_in.dart';
///
/// //* Display the Sign-In page.
/// SignIn(),
/// ```
class SignIn extends ConsumerWidget {
  /// Constructor for the SignIn widget.
  ///
  /// The [key] parameter is optional and is used to provide a key for the widget.
  const SignIn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    double width = ResponsiveBreakpoints.of(context).screenWidth / 7;
    ResponsiveRowColumnType layout = isDesktop ? ResponsiveRowColumnType.ROW : ResponsiveRowColumnType.COLUMN;

    return ApplicationContainer(
      child: Center(
        child: ResponsiveRowColumn(
          layout: layout,
          rowSpacing: width,
          columnSpacing: 32,
          rowMainAxisSize: MainAxisSize.min,
          rowCrossAxisAlignment: CrossAxisAlignment.center,
          columnMainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResponsiveRowColumnItem(child: ApplicationBrandContainer(isDesktop: isDesktop,)),
            const ResponsiveRowColumnItem(child: FormContainer())
          ],
        ),
      ),
    );
  }
}
