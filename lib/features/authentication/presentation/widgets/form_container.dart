import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/authentication/authentication.dart';

class FormContainer extends ConsumerWidget {
  const FormContainer({
    super.key, 
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    EdgeInsets padding = const EdgeInsets.only(bottom: 32, left: 12, right: 12, top: 32); 
    
    return SizedBox(
      width: 350,
      child: Card(
        padding: padding,
        child: const Form(
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisSize: MainAxisSize.min,
            columnSpacing: 16,
            children: [
              ResponsiveRowColumnItem(child: EmailInput()),
              ResponsiveRowColumnItem(child: PasswordInput()),
              ResponsiveRowColumnItem(child: SignInButton()),
              ResponsiveRowColumnItem(child: PrimaryCaption(forgotPassword)),
            ],
          ),
        ),
      ),
    );
  }
}