import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:otoscopia_health_worker/core/widgets/container_box.dart';
import 'package:otoscopia_health_worker/features/authentication/presentation/pages/sign_in.dart';
import 'package:otoscopia_health_worker/features/authentication/presentation/providers/authentication_provider.dart';

class Routes extends ConsumerWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isAuthenticated = ref.watch(authenticationProvider).$uid;

    return isAuthenticated != null
        ? ContainerBox(child: Container())
        : const SignIn();
  }
}
