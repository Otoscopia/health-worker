import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsernameNotifier extends StateNotifier<String> {
  UsernameNotifier() : super("");

  setUsername(String value) {
    state = value;
  }
}

final usernameProvider = StateNotifierProvider<UsernameNotifier, String>((ref) {
  return UsernameNotifier();
});