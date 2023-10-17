import 'package:flutter_riverpod/flutter_riverpod.dart';

class EmailNotifier extends StateNotifier<String> {
  EmailNotifier() : super("");

  setEmail(String value) {
    state = value;
  }
}

final emailProvider = StateNotifierProvider<EmailNotifier, String>((ref) {
  return EmailNotifier();
});