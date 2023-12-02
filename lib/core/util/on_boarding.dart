import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class OnBoarding extends ConsumerWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApplicationContainer(
      child: FutureBuilder(
        future: futureProvider(ref),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorPage(errorStatus: snapshot.error);
          } else if (snapshot.hasData) {
            return const Application();
          }

          return const LoadingPage();
        },
      ),
    );
  }
}
