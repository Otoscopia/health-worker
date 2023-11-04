import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/authentication/authentication.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool loading = ref.watch(authStateProvider).loading;
    bool error = ref.watch(authStateProvider).error;
    String errorMessage = ref.watch(authStateProvider).message;

    void onPress() {
      ref.read(authStateProvider.notifier).clearError();
      String email = ref.read(emailProvider);
      String password = ref.read(passwordProvider);
      ref.read(authenticationStateProvider.notifier).signIn(email, password, ref);
    }

    if (error) {
      popUpInfoBar(context, null, errorLabel, errorMessage, null);
    }

    Widget button = SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPress,
        child: const Text(signInText).fontWeight(FontWeight.w500),
      ),
    );

    return loading ? const ProgressRing() : button;
  }
}
