import 'package:flutter_riverpod/flutter_riverpod.dart';

class SchoolIdNotifier extends StateNotifier<String> {
  SchoolIdNotifier(): super("");
  
  setSchoolId(String value) {
    state = value;
  }
}

final schoolIdProvider = StateNotifierProvider<SchoolIdNotifier, String>((ref) {
  return SchoolIdNotifier();
});