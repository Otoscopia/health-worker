import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/presentation/providers/future_table_provider.dart';
import 'package:health_worker/features/features.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ApplicationContainer(
      child: FutureBuilder(
        future: Future.wait(
          [
          ref.watch(futureUserProvider.future),
          ref.watch(futurePatientsProvider.future),
          ref.watch(futureDoctorsProvider.future),
          ref.watch(futureSchoolsProvider.future),
          ref.watch(futureAssignmentProvider.future),
          ref.watch(futureScreeningProvider.future),
          ref.watch(futureTableProvider.future),
        ]),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorScreen(error: snapshot.error);
          } else if (snapshot.hasData) {
            return const DashboardNavigation();
          }

          return const LoadingAnimation();
        },
      ),
    );
  }
}
