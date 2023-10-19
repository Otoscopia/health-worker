import 'package:flutter_riverpod/flutter_riverpod.dart';

class UndergoSurgeryNotifier extends StateNotifier<int> {
  UndergoSurgeryNotifier() : super(3);

  setState(int value) {
    state = value;
  }
}

final undergoSurgeryProvider = StateNotifierProvider<UndergoSurgeryNotifier, int>((ref) {
  return UndergoSurgeryNotifier();
});

class TakingMedicationNotifier extends StateNotifier<int> {
  TakingMedicationNotifier() : super(3);

  setState(int value) {
    state = value;
  }
}

final takingMedicationProvider = StateNotifierProvider<TakingMedicationNotifier, int>((ref) {
  return TakingMedicationNotifier();
});

class SurgeryErrorNotifier extends StateNotifier<bool> {
  SurgeryErrorNotifier() : super(false);

  setState(bool value) {
    state = value;
  }
}

final surgeryErrorProvider = StateNotifierProvider<SurgeryErrorNotifier, bool>((ref) {
  return SurgeryErrorNotifier();
});