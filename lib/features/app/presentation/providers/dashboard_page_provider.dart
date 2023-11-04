import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPageNotifier extends StateNotifier<int> {
  DashboardPageNotifier() : super(0);

  setNav(int index) {
    state = index;
  }
}

final dashboardPageProvider = StateNotifierProvider<DashboardPageNotifier, int>((ref) => DashboardPageNotifier());