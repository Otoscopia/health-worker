import "package:appwrite/appwrite.dart";
import "package:appwrite/models.dart";
import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/core/constants/constants.dart";
import "package:health_worker/core/widgets/info_bar_pop_up.dart";
import "package:health_worker/dependency_injection.dart";
import "package:health_worker/features/authentication/presentation/providers/authentication_provider.dart";
import "package:health_worker/features/authentication/presentation/widgets/email_text_box.dart";
import "package:health_worker/features/authentication/presentation/widgets/logo_container.dart";
import "package:health_worker/features/authentication/presentation/widgets/password_text_box.dart";
import 'package:health_worker/core/widgets/container_box.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  final key = GlobalKey<FormState>();
  bool loading = false;
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
                    if (loading) const ProgressRing(),
                    if (!loading)
                      SizedBox(
                        width: 150,
                        child: FilledButton(
                          child: const Text("Sign In"),
                          onPressed: () {
                            signIn();
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // TODO: Create warning/error message something is wrong
  signIn() async {
    setValue(true);

    if (key.currentState!.validate() && password.text.length >= 8) {
      try {
        Session session = await account.createEmailSession(
            email: email.text, password: password.text);
        if (session.current) {
          User user = await account.get();
          ref.watch(authenticationProvider.notifier).setUser(user);
        }
      } on AppwriteException catch (error) {
        popUpInfoBar(context, InfoBarSeverity.error, errorLabel, "Error Message: ${error.message}", 5);
      }
    }

    setValue(false);
  }

  setValue(bool value) {
    setState(() {
      loading = value;
    });
  }
}
