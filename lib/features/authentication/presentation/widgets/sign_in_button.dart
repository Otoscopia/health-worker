import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants.dart';
import 'package:health_worker/core/widgets.dart';
import 'package:health_worker/features/authentication/domain/usecase/sign_in_usecase.dart';
import 'package:health_worker/features/authentication/presentation/provider/authentication_provider.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool loading = ref.watch(authenticationProvider).loading;
    bool error = ref.watch(authenticationProvider).error;
    String? errorMessage = ref.watch(authenticationProvider).errorMesage;

    if (error) {
      if (errorMessage != null) {
          popUpInfoBar(context, InfoBarSeverity.error, errorLabel, errorMessage, 5);
      }
    }

    return loading
        ? const ProgressRing()
        : SizedBox(
            width: 150,
            child: FilledButton(
              child: const Text(signInButton),
              onPressed: () => signIn(context, ref),
            ),
          );
  }
}
