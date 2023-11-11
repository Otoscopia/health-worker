import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';

class ScreeningNotifier extends StateNotifier<ScreeningEntity> {
  final StateNotifierProviderRef<ScreeningNotifier, ScreeningEntity> ref;
  
  ScreeningNotifier(this.ref) : super(emptyScreening);

  setScreening(ScreeningEntity screening) {
    useCases.screeningsUseCases.setLocalScreening(screening);
    state = screening;
  }

  cleanStates() {
    ref.read(historyOfIllnessProvider.notifier).setState("");
    ref.read(healthWorkerCommentProvider.notifier).setState("");
    ref.read(temperaturenessProvider.notifier).setState("");
    ref.read(heightProvider.notifier).setState("");
    ref.read(weightProvider.notifier).setState("");
    ref.read(similarConditionProvider.notifier).setState(3);
    ref.read(cheifComplainProvider.notifier).setStatetoEmpty();
    ref.read(otherComplainProvider.notifier).setState("");
    ref.read(haveAllergiesProvider.notifier).setState(3);
    ref.read(undergoSurgeryProvider.notifier).setState(3);
    ref.read(takingMedicationProvider.notifier).setState(3);
    ref.read(medicationProvider.notifier).setState("");
  }
}

final screeningProvider =
    StateNotifierProvider<ScreeningNotifier, ScreeningEntity>((ref) {
  return ScreeningNotifier(ref);
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
