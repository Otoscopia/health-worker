import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApplicationNotifier extends StateNotifier<int> {
  ApplicationNotifier() : super(0);

  setNav(int index) {
    state = index;
  }
}

final applicationProvider = StateNotifierProvider<ApplicationNotifier, int>(
    (ref) => ApplicationNotifier());
