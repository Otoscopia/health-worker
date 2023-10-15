import 'package:flutter_riverpod/flutter_riverpod.dart';

class BirthdateNotifier extends StateNotifier<DateTime> {
  BirthdateNotifier(): super(DateTime.now());
  
  setBirthdate(DateTime value) {
    state = value;
  }
}

final birthdateProvider = StateNotifierProvider<BirthdateNotifier, DateTime>((ref) {
  return BirthdateNotifier();
});