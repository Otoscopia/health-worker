import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApplicationStateNotifier extends StateNotifier<ApplicationEntity> {
  ApplicationStateNotifier() : super(ApplicationEntity(connected: true));

  setConnected(bool value) {
    if (value != state.connected) {
      state = ApplicationEntity(connected: value);
    }
  }
}

final applicationStateProvider =
    StateNotifierProvider<ApplicationStateNotifier, ApplicationEntity>((ref) {
  return ApplicationStateNotifier();
});

class ApplicationEntity {
  String? language;
  bool connected;
  int? fontSize;

  ApplicationEntity({
    required this.connected,
    this.language,
    this.fontSize,
  });
}
