import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureScreeningProvider =
    FutureProvider<List<ScreeningEntity>>((ref) async {
  ref.watch(authenticationStateProvider);

  late final List<ScreeningEntity> screenings;

  if (ref.read(networkProvider)) {
    screenings = await useCases.screeningsUseCases.getRemoteScreenings();
    await useCases.screeningsUseCases.setScreenings(screenings);
  } else {
    screenings = await useCases.screeningsUseCases.getLocalScreenings();
  }

  ref.read(screeningsProvider.notifier).setScreenings(screenings);
  return screenings;
});

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
