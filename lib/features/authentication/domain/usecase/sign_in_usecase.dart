import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';

class SignInUseCase {
  signIn(BuildContext context, WidgetRef ref) {
    String email = ref.read(emailProvider);
    String password = ref.read(passwordProvider);

    if (email.isEmpty && password.isEmpty) {
      popUp(context, formsError);
    } else if (email.isEmpty) {
      popUp(context, emailEmpty);
    } else if (!email.contains("@")) {
      popUp(context, emailError);
    } else if (password.isEmpty) {
      popUp(context, passwordEmpty);
    } else if (password.length < 8) {
      popUp(context, passwordError);
    } else {
      ref.watch(authenticationProvider.notifier).signIn(email, password);
    }
  }

  popUp(BuildContext context, String message) {
    popUpInfoBar(context, InfoBarSeverity.warning, errorLabel, message, 3);
  }
}
