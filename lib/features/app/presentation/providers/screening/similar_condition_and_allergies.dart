import 'package:flutter_riverpod/flutter_riverpod.dart';

class SimilarConditionNotifier extends StateNotifier<int> {
  SimilarConditionNotifier() : super(3);

  setState(int value) {
    state = value;
  }
}

final similarConditionProvider = StateNotifierProvider<SimilarConditionNotifier, int>((ref) {
  return SimilarConditionNotifier();
});

class SimilarConditionErrorNotifier extends StateNotifier<bool> {
  SimilarConditionErrorNotifier() : super(false);

  setState(bool value) {
    state = value;
  }
}

final similarConditionErrorProvider = StateNotifierProvider<SimilarConditionErrorNotifier, bool>((ref) {
  return SimilarConditionErrorNotifier();
});

class HaveAllergiesNotifier extends StateNotifier<int> {
  HaveAllergiesNotifier() : super(3);

  setState(int value) {
    state = value;
  }
}

final haveAllergiesProvider = StateNotifierProvider<HaveAllergiesNotifier, int>((ref) {
  return HaveAllergiesNotifier();
});

class HaveAllergiesErrorNotifier extends StateNotifier<bool> {
  HaveAllergiesErrorNotifier() : super(false);

  setState(bool value) {
    state = value;
  }
}

final haveAllergiesErrorProvider = StateNotifierProvider<HaveAllergiesErrorNotifier, bool>((ref) {
  return HaveAllergiesErrorNotifier();
});