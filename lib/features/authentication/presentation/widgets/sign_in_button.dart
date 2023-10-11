import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/widgets/info_bar_pop_up.dart';
import 'package:health_worker/features/authentication/presentation/providers/authentication_provider.dart';

class SignInButton extends ConsumerWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController email, password;
  const SignInButton(
      {super.key,
      required this.email,
      required this.password,
      required this.globalKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool loading = ref.watch(authenticationProvider).loading;
    bool error = ref.watch(authenticationProvider).error;
    String? errorMessage = ref.watch(authenticationProvider).errorMessage;

    if (error) {
      popUpInfoBar(context, InfoBarSeverity.error, "title", "$errorMessage", 10);
    }

    return loading
        ? const ProgressRing()
        : SizedBox(
            width: 150,
            child: FilledButton(
              child: const Text("Sign In"),
              onPressed: () =>
                  signIn(ref, email.text, password.text, globalKey),
            ),
          );
  }
}

signIn(WidgetRef ref, String email, String password, GlobalKey<FormState> key) {
  if (key.currentState!.validate() && password.length >= 8) {
    ref.watch(authenticationProvider.notifier).signIn(email, password);
  }
}
