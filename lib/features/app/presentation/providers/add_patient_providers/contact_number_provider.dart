import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactNumberNotifier extends StateNotifier<String> {
  ContactNumberNotifier(): super("");
  
  setContactNumber(String value) {
    state = value;
  }
}

final contactNumberProvider = StateNotifierProvider<ContactNumberNotifier, String>((ref) {
  return ContactNumberNotifier();
});