import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants.dart';
import 'package:health_worker/core/widgets/info_bar_pop_up.dart';
import 'package:health_worker/features/authentication/domain/provider.dart';
import 'package:health_worker/features/authentication/presentation/provider/authentication_provider.dart';

signIn(BuildContext context, WidgetRef ref) {
  String username = ref.read(usernameProvider);
  String password = ref.read(passwordProvider);

  if (username.isEmpty && password.isEmpty) {
    popUp(context, emptyInputsError);
  } else if (username.isEmpty) {
    popUp(context, usernameEmpty);
  } else if (!username.contains(".")) {
    popUp(context, usernameError);
  } else if (password.isEmpty) {
    popUp(context, passwordEmpty);
  } else if (password.length < 8) {
    popUp(context, passwordError);
  } else {
    ref.watch(authenticationProvider.notifier).signIn(username, password);
  }
}

popUp(BuildContext context, String message) {
  popUpInfoBar(context, InfoBarSeverity.warning, errorLabel, message, 3);
}
