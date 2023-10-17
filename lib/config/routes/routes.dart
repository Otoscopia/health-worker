import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'future_functions.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';

class Routes extends ConsumerWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool authenticated = ref.watch(authenticationProvider).authenticated;
    bool connected = ref.watch(applicationStateProvider).connected;

    Future<bool> loadUserFuture = connected ? loadUser(ref, authenticated) : loadUserOffline(ref);

    return FutureBuilder(
      future: loadUserFuture,
      builder: ((context, snapshot) {
        if (snapshot.data == false) {
          return const SignIn();
        } else if (snapshot.data == true) {
          return const Dashboard();
        } else {
          return const LoadingAnimation();
        }
      }),
    );
  }
}
