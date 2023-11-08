import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';

class ScreeningNotifier extends StateNotifier<ScreeningEntity> {
  ScreeningNotifier() : super(emptyScreening);

  setScreening(ScreeningEntity screening) {
    useCases.screeningsUseCases.setLocalScreening(screening);
    useCases.screeningsUseCases.setRemoteScreening(screening);

    state = screening;
  }
}

final screeningProvider =
    StateNotifierProvider<ScreeningNotifier, ScreeningEntity>((ref) {
  return ScreeningNotifier();
});

ScreeningEntity emptyScreening = ScreeningEntity(
  id: "",
  patient: "",
  assignment: "",
  historyOfIllness: "",
  healthWorkerRemarks: "",
  temperature: "",
  height: "",
  weight: "",
  hasSimilarCondition: "",
  chiefComplaint: "",
  chiefComplaintMessage: "",
  hasAllergies: "",
  typeOfAllergies: "",
  undergoSurgery: "",
  takingMedication: "",
  takingMedicationMessage: "",
  status: "",
  createdAt: "",
  images: [],
);
