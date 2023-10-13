import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/domain/entity/screening_entity.dart';

class ScreeningNotifier extends StateNotifier<ScreeningEntity> {
  ScreeningNotifier()
      : super(ScreeningEntity(
            historyOfIllness: '',
            healthWorkerComment: '',
            frameOfInterest: '',
            complains: '',
            temperature: 0,
            bloodPressure: 0,
            height: 0,
            weight: 0,
            hasSimilarCondition: false,
            hasAllergies: false,
            patientUndergoSurgery: false,
            patientTakingMedication: false));

  setProvider(
    String? historyOfIllness,
    String? healthWorkerComment,
    String? frameOfInterest,
    String? complains,
    String? chiefComplainMessage,
    String? patientTakingMedicationMessage,
    double? temperature,
    double? bloodPressure,
    double? height,
    double? weight,
    bool? hasAllergies, 
    bool? hasSimilarCondition,
    bool? patientUndergoSurgery,
    bool? patientTakingMedication,
  ) {
    state = ScreeningEntity(
      historyOfIllness: historyOfIllness ?? state.historyOfIllness,
      healthWorkerComment: healthWorkerComment ?? state.healthWorkerComment,
      frameOfInterest: frameOfInterest ?? state.frameOfInterest,
      complains: complains ?? state.complains,
      chiefComplainMessage: chiefComplainMessage ?? state.chiefComplainMessage,
      patientTakingMedicationMessage: patientTakingMedicationMessage ?? state.patientTakingMedicationMessage,
      temperature: temperature ?? state.temperature,
      bloodPressure: bloodPressure ?? state.bloodPressure,
      height: height ?? state.height,
      weight: weight ?? state.weight,
      hasSimilarCondition: hasSimilarCondition ?? state.hasSimilarCondition,
      hasAllergies: hasAllergies ?? state.hasAllergies,
      patientUndergoSurgery: patientUndergoSurgery ?? state.patientUndergoSurgery,
      patientTakingMedication: patientTakingMedication ?? state.patientTakingMedication,
    );
  }
}

final screeningProvider =
    StateNotifierProvider<ScreeningNotifier, ScreeningEntity>((ref) {
  return ScreeningNotifier();
});
