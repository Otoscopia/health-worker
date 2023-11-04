import 'package:flutter_riverpod/flutter_riverpod.dart';

class NetworkNotifier extends StateNotifier<bool> {
  NetworkNotifier() : super(true);

  setNetwork(bool value) {
    if (value != state) {
      state = value;
    }
  }
}

final networkProvider = StateNotifierProvider<NetworkNotifier, bool>((ref) {
  return NetworkNotifier();
});