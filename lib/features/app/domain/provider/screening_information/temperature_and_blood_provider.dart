import 'package:flutter_riverpod/flutter_riverpod.dart';

class TemperaturenessNotifier extends StateNotifier<String> {
  TemperaturenessNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final temperaturenessProvider = StateNotifierProvider<TemperaturenessNotifier, String>((ref) {
  return TemperaturenessNotifier();
});

class BloodPressureNotifier extends StateNotifier<String> {
  BloodPressureNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final bloodPressureProvider = StateNotifierProvider<BloodPressureNotifier, String>((ref) {
  return BloodPressureNotifier();
});