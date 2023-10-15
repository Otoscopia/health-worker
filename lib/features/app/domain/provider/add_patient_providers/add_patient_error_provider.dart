import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPatientErrorNotifier extends StateNotifier<bool> {
  AddPatientErrorNotifier(): super(false);
  
  setError(bool value) {
    state = value;
  }
}

final addPatientErrorProvider = StateNotifierProvider<AddPatientErrorNotifier, bool>((ref) {
  return AddPatientErrorNotifier();
});