import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordNotifier extends StateNotifier<String> {
  PasswordNotifier() : super("");

  setPassword(String value) {
    state = value;
  }
}

final passwordProvider = StateNotifierProvider<PasswordNotifier, String>((ref) {
  return PasswordNotifier();
});