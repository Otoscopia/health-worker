import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureAssignmentProvider = FutureProvider<List<AssignmentEntity>>((ref) async {
  final assginmentUseCase = GetRemoteAssignmentUseCase(repository: applicationRepository);
  final assignments = await assginmentUseCase.execute();
  return assignments;
});
