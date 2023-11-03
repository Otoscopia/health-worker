import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/authentication/authentication.dart';

class SignIn extends ConsumerWidget {
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
