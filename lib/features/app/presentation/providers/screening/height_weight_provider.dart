import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeightNotifier extends StateNotifier<String> {
  HeightNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final heightProvider = StateNotifierProvider<HeightNotifier, String>((ref) {
  return HeightNotifier();
});

class WeightNotifier extends StateNotifier<String> {
  WeightNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final weightProvider = StateNotifierProvider<WeightNotifier, String>((ref) {
  return WeightNotifier();
});