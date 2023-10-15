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