import 'package:flutter_riverpod/flutter_riverpod.dart';

class SchoolNameNotifier extends StateNotifier<String> {
  SchoolNameNotifier(): super("");
  
  setSchoolName(String value) {
    state = value;
  }
}

final schoolNameProvider = StateNotifierProvider<SchoolNameNotifier, String>((ref) {
  return SchoolNameNotifier();
});