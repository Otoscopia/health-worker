import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

Future<void> doctors(WidgetRef ref) async {
  late final List<UserEntity> doctors;

  if (ref.read(networkProvider)) {
    doctors = await useCases.doctorsUseCases.getRemoteDoctors();
    await useCases.doctorsUseCases.setDoctors(doctors);
  } else {
    doctors = await useCases.doctorsUseCases.getLocalDoctors();
  }

  ref.read(doctorsProvider.notifier).setDoctors(doctors);
}

class DoctorsNotifier extends StateNotifier<List<UserEntity>> {
  DoctorsNotifier() : super([]);

  setDoctors(List<UserEntity> doctors) => state = doctors;

  UserEntity findDoctor(String id) {
    final doctor = state.where((element) => element.id == id).first;
    return doctor;
  }
}

final doctorsProvider =
    StateNotifierProvider<DoctorsNotifier, List<UserEntity>>((ref) {
  return DoctorsNotifier();
});
