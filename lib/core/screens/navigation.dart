import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/features.dart';

class Navigation extends ConsumerWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthenticationEntity? auth = ref.watch(authenticationStateProvider);
    if (auth == null) ref.read(authenticationStateProvider.notifier).getCurrentUser();

    return auth != null ?  const Dashboard() : const SignIn();
  }
}