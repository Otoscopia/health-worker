import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/presentation/providers/future_provider.dart';
import 'package:health_worker/features/features.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Initialize Encryption Repository
    // encryptionRepository = createEncryptionRepository("UjU4OUZ0b3E0Mm1uTStZRS82NkIyZW83bzhiN2NOZFFwNm9EcDNNaWN6UjFOOW5sS3RsZWhQOW10WlVYa1ZRcQ==");

    return ApplicationContainer(
      child: FutureBuilder(
        future: futureProvider(ref),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorScreen(errorStatus: snapshot.error);
          } else if (snapshot.hasData) {
            return const DashboardNavigation();
          }

          return const LoadingAnimation();
        },
      ),
    );
  }
}
