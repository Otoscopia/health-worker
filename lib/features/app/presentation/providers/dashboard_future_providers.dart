import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardFutureNotifier extends StateNotifier<List<Object?>> {
  DashboardFutureNotifier() : super([]);

  setFuture(List<Object?> future) {
    state = future;
  }
}

final dashboardFutureProvider =
    StateNotifierProvider<DashboardFutureNotifier, List<Object?>>(
        (ref) => DashboardFutureNotifier());
