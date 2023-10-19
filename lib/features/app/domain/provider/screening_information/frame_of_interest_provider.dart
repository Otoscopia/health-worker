import 'package:flutter_riverpod/flutter_riverpod.dart';

class FrameOfInterestCommentNotifier extends StateNotifier<String> {
  FrameOfInterestCommentNotifier() : super("");

  setState(String value) {
    state = value;
  }
}

final frameOfInterestCommentProvider = StateNotifierProvider<FrameOfInterestCommentNotifier, String>((ref) {
  return FrameOfInterestCommentNotifier();
});