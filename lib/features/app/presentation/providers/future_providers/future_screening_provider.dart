import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

/// Fetch and handle screenings based on the user's online status.
Future<void> screenings(
    WidgetRef ref, List<AssignmentEntity> assignments) async {
  // Check if the user is online
  final bool isOnline = ref.read(networkProvider);

  // Late declare screenings variable
  late final List<ScreeningEntity> screenings;

  // Late declare cloud screenings variable
  late final List<ScreeningEntity> cloud;

  // Late declare local screenings variable
  late final List<ScreeningEntity> local;

  // Get local screenings
  local = await useCases.screeningsUseCases.getLocalScreenings();

  // Check if user is online
  if (isOnline) {
    // Get remote screenings
    cloud = await useCases.screeningsUseCases.getRemoteScreenings();

    // Filter screenings based on assignments
    screenings = cloud
        .where((screening) => assignments
            .any((assignment) => assignment.id == screening.assignment))
        .toList();

    // Check if local is not empty
    if (local.isNotEmpty) {
      // Check if local screenings need to be updated
      if (local.length > screenings.length) {
        // Filter local screenings not present in the cloud
        List<ScreeningEntity> filter = local
            .where((screening) => !screenings
                .any((element) => element.assignment == screening.assignment))
            .toList();

        // upload filtered screenings to cloud
        filter.map((screening) async {
          await useCases.screeningsUseCases.setRemoteScreening(screening);
        });

        List<ScreeningEntity> updatedScreenings = screenings + filter;

        // Update local screenings with cloud screenings
        await _updateLocalScreenings(updatedScreenings, ref);
      } else {
        // Update local screenings with cloud screenings
        await _updateLocalScreenings(screenings, ref);
        return;
      }
    } else {
      // No local data, update local screenings with cloud screenings
      _updateLocalScreenings(screenings, ref);
      return;
    }
  } else {
    // User is offline, use local data
    ref.read(screeningsProvider.notifier).setScreenings(local);
    return;
  }
}

/// Update local screenings and notify the provider.
Future<void> _updateLocalScreenings(
    List<ScreeningEntity> updatedScreenings, WidgetRef ref) async {
  // Update local screenings in storage
  await useCases.screeningsUseCases.setScreenings(updatedScreenings);

  // Notify the provider with the updated screenings
  ref.read(screeningsProvider.notifier).setScreenings(updatedScreenings);
}

class ScreeningsNotifier extends StateNotifier<List<ScreeningEntity>> {
  ScreeningsNotifier() : super([]);

  void setScreenings(List<ScreeningEntity> screenings) => state = screenings;

  void modifyScreening(ScreeningEntity screening, int index) {
    final List<ScreeningEntity> screenings = state;
    state = [];
    screenings[index] = screening;
    state = screenings;

    useCases.screeningsUseCases.setScreenings(screenings);
  }

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
