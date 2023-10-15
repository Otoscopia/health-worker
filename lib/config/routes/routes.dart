import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/routes/future_functions.dart';
import 'package:health_worker/core/provider/application_provider.dart';
import 'package:health_worker/core/widgets.dart';
import 'package:health_worker/core/widgets/offline_bar.dart';
import 'package:health_worker/features/app/presentation/pages/dashboard.dart';
import 'package:health_worker/features/authentication/presentation/pages/sign_in.dart';
import 'package:health_worker/features/authentication/presentation/provider/authentication_provider.dart';

class Routes extends ConsumerWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool authenticated = ref.watch(authenticationProvider).authenticated;
    return OfflineBuilder(
      connectivityBuilder: (BuildContext context, ConnectivityResult connectivity, Widget child) {
        final bool connected = connectivity != ConnectivityResult.none;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(applicationStateProvider.notifier).setConnected(connected);
        });
        return Stack(
          fit: StackFit.expand,
          children: [child, OfflineBar(connected: connected)],
        );
      },
      child: FutureBuilder(
        future: loadUser(ref, authenticated, ref.watch(applicationStateProvider).connected),
        builder: ((context, snapshot) {
          if (snapshot.data == false) {
            return const SignIn();
          } else if (snapshot.data == true) {
            return const Dashboard();
          } else {
            return const LoadingAnimation();
          }
        }),
      ),
    );
  }
}
