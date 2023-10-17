import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/core/exports.dart";
import 'package:health_worker/features/authentication/exports.dart';

class SignIn extends ConsumerWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Center(
          child: SizedBox(
            width: 346,
            child: Card(
              borderColor: transparent,
              padding: largePadding,
              child: Form(
                key: key,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LogoContainer(),
                    const Text(welcomeLabel).bold().fontSize(18),
                    largeHeight,
                    const EmailTextBox(),
                    largeHeight,
                    const PasswordTextBox(),
                    largeHeight,
                    const SignInButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
