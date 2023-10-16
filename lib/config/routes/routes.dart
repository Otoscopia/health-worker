import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_offline/flutter_offline.dart';
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
        future: loadUser(ref, authenticated, connected),
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
