import 'package:flutter_riverpod/flutter_riverpod.dart';

class FullnameNotifier extends StateNotifier<String> {
  FullnameNotifier(): super("");
  
  setFullname(String value) {
    state = value;
  }
}

final fullnameProvider = StateNotifierProvider<FullnameNotifier, String>((ref) {
  return FullnameNotifier();
});