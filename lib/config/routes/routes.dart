import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/routes/future_functions.dart';
import 'package:health_worker/core/widgets/container_box.dart';
import 'package:health_worker/features/app/presentation/pages/dashboard.dart';
import 'package:health_worker/features/authentication/presentation/pages/sign_in.dart';
import 'package:health_worker/features/authentication/presentation/providers/authentication_provider.dart';

class Routes extends ConsumerWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool? authenticated = ref.watch(authenticationProvider).authenticated;

    return FutureBuilder(
      future: loadUser(ref, authenticated),
      builder: (
        (context, snapshot) {
          if (snapshot.data == false) {
            return const SignIn();
          } else if (snapshot.data == true) {
            return const Dashboard();
          } else {
            return const ScaffoldPage(
              padding: EdgeInsets.zero,
              content: ContainerBox(
                child: Center(
                  child: ProgressRing(),
                ),
              ),
            );
          }
        }
      ),
    );
  }
}
