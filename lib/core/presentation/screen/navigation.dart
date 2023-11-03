import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/presentation/presentation.dart';
import 'package:health_worker/features/authentication/authentication.dart';

class Navigation extends ConsumerWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthenticationEntity? authenticated = ref.watch(authenticationStateProvider);
    if (authenticated == null) ref.read(authenticationStateProvider.notifier).getCurrentUser();
    return authenticated != null ? const Dashboard() : const SignIn();
  }
}