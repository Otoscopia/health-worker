import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futurePatientsProvider = FutureProvider<List<PatientEntity>>((ref) async {
  final patientUseCase = GetPatientsRemoteUseCase(repository: applicationRepository);
  final patients = await patientUseCase.execute();
  return patients;
});
