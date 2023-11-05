import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryOfIllnessNotifier extends StateNotifier<String> {
  HistoryOfIllnessNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final historyOfIllnessProvider = StateNotifierProvider<HistoryOfIllnessNotifier, String>((ref) {
  return HistoryOfIllnessNotifier();
});

class HealthWorkerCommentNotifier extends StateNotifier<String> {
  HealthWorkerCommentNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final healthWorkerCommentProvider = StateNotifierProvider<HealthWorkerCommentNotifier, String>((ref) {
  return HealthWorkerCommentNotifier();
});