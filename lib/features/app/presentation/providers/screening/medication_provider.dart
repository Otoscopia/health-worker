import 'package:flutter_riverpod/flutter_riverpod.dart';

class MedicationNotifier extends StateNotifier<String> {
  MedicationNotifier(): super("");
  
  setState(String value) {
    state = value;
  }
}

final medicationProvider = StateNotifierProvider<MedicationNotifier, String>((ref) {
  return MedicationNotifier();
});

class MedicationErrorNotifier extends StateNotifier<bool> {
  MedicationErrorNotifier() : super(false);

  setState(bool value) {
    state = value;
  }
}

final medicationErrorProvider = StateNotifierProvider<MedicationErrorNotifier, bool>((ref) {
  return MedicationErrorNotifier();
});