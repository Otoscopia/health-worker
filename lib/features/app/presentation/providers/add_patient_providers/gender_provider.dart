import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenderNotifier extends StateNotifier<int> {
  GenderNotifier(): super(3);
  
  setGender(int index) {
    state = index;
  }
}

final genderProvider = StateNotifierProvider<GenderNotifier, int>((ref) {
  return GenderNotifier();
});

class GenderErrorNotifier extends StateNotifier<bool> {
  GenderErrorNotifier(): super(false);
  
  setGenderError(bool index) {
    state = index;
  }
}

final genderErrorProvider = StateNotifierProvider<GenderErrorNotifier, bool>((ref) {
  return GenderErrorNotifier();
});