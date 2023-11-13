import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

Future<void> screenings(
    WidgetRef ref, List<AssignmentEntity> assignments) async {
  // Late declare screenings variable
  late final List<ScreeningEntity> screenings;

  // Late declare cloud screenings variable
  late final List<ScreeningEntity> cloud;

  // Late declare local screenings variable
  late final List<ScreeningEntity> local;

  // Get local screenings
  local = await useCases.screeningsUseCases.getLocalScreenings();

  // Check if user is online
  if (ref.read(networkProvider)) {
    // Check if assignments is not empty
    if (assignments.isNotEmpty) {
      // Get remote screenings
      cloud = await useCases.screeningsUseCases.getRemoteScreenings();

      // Check if screenings are in assignments list and initialize screenings
      screenings = cloud
          .where((screening) => assignments
              .any((assignment) => assignment.id == screening.assignment))
          .toList();

      // Filter screenings that is not in local storage
      List<ScreeningEntity> filter = screenings
          .where((screening) =>
              !local.any((element) => element == screening))
          .toList();

      // Set screenings to local storage
      await useCases.screeningsUseCases.setScreenings(filter);
    }
    await useCases.screeningsUseCases.setScreenings(screenings);
  } else {
    screenings = await useCases.screeningsUseCases.getLocalScreenings();
  }

  ref.read(screeningsProvider.notifier).setScreenings(screenings);
}

class ScreeningsNotifier extends StateNotifier<List<ScreeningEntity>> {
  ScreeningsNotifier() : super([]);

  void setScreenings(List<ScreeningEntity> screenings) => state = screenings;

  void addScreening(ScreeningEntity screening) {
    final List<ScreeningEntity> screenings = state;
    screenings.add(screening);
    state = screenings;
  }
}

final screeningsProvider =
    StateNotifierProvider<ScreeningsNotifier, List<ScreeningEntity>>((ref) {
  return ScreeningsNotifier();
});
