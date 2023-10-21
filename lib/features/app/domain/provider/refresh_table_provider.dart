import 'package:flutter_riverpod/flutter_riverpod.dart';

class RefreshNotifier extends StateNotifier<bool> {
  RefreshNotifier() : super(false);

  setState(bool value) {
    state = value;
  }
}

final refreshProvider = StateNotifierProvider<RefreshNotifier, bool>((ref) {
  return RefreshNotifier();
});
