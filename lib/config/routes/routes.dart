import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/routes/future_functions.dart';
import 'package:health_worker/core/widgets.dart';
import 'package:health_worker/features/app/presentation/pages/dashboard.dart';
import 'package:health_worker/features/authentication/presentation/pages/sign_in.dart';

class Routes extends ConsumerWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool? authenticated = false;

    return FutureBuilder(
      future: loadUser(ref, authenticated),
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
