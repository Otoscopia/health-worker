import "package:flutter_riverpod/flutter_riverpod.dart";

class FilterNotifier extends StateNotifier<String> {
  FilterNotifier() : super("");

  setFilter(String status) {
    state = status;
  }
}

final filterProvider = StateNotifierProvider<FilterNotifier, String>((ref) {
  return FilterNotifier();
});
