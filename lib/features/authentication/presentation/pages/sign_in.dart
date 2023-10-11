import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/core/constants/constants.dart";
import "package:health_worker/features/authentication/presentation/widgets/email_text_box.dart";
import "package:health_worker/features/authentication/presentation/widgets/logo_container.dart";
import "package:health_worker/features/authentication/presentation/widgets/password_text_box.dart";
import "package:health_worker/features/authentication/presentation/widgets/sign_in_button.dart";
import 'package:health_worker/core/widgets/container_box.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  final key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    EmailTextBox(email: email),
                    largeHeight,
                    PasswordTextBox(password: password),
                    largeHeight,
                    SignInButton(email: email, password: password, globalKey: key),
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
