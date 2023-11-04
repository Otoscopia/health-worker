import 'package:flutter_riverpod/flutter_riverpod.dart';

class GuardianFullnameNotifier extends StateNotifier<String> {
  GuardianFullnameNotifier(): super("");
  
  setFullname(String value) {
    state = value;
  }
}

final guardianFullnameProvider = StateNotifierProvider<GuardianFullnameNotifier, String>((ref) {
  return GuardianFullnameNotifier();
});