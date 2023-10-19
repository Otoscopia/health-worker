import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheifComplainNotifier extends StateNotifier<List<bool>> {
  CheifComplainNotifier() : super([false, false, false, false, false]);

  setState(int index, bool? value) {
    state = [
      for (var i = 0; i < state.length; i++)
        if (i == index) value ?? false else state[i],
    ];
  }

  setStatetoEmpty() {
    state = [false, false, false, false, false];
  }
}

final cheifComplainProvider =
    StateNotifierProvider<CheifComplainNotifier, List<bool>>((ref) {
  return CheifComplainNotifier();
});

class CheifComplainErrorNotifier extends StateNotifier<bool> {
  CheifComplainErrorNotifier() : super(false);

  setState(bool value) {
    state = value;
  }
}

final cheifComplainErrorProvider =
    StateNotifierProvider<CheifComplainErrorNotifier, bool>((ref) {
  return CheifComplainErrorNotifier();
});

class OtherComplainNotifier extends StateNotifier<String> {
  OtherComplainNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final otherComplainProvider =
    StateNotifierProvider<OtherComplainNotifier, String>((ref) {
  return OtherComplainNotifier();
});
