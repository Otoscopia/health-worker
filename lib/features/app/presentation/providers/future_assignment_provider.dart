import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureAssignmentProvider = FutureProvider<List<AssignmentEntity>>((ref) async {
  final assginmentUseCase = GetRemoteAssignmentUseCase(repository: applicationRepository);
  final assignments = await assginmentUseCase.execute();
  ref.read(assignmentProvider.notifier).setAssignment(assignments);
  return assignments;
});

class AssignmentNotifier extends StateNotifier<List<AssignmentEntity>> {
  AssignmentNotifier() : super([]);

  setAssignment(List<AssignmentEntity> assignment) => state = assignment;
}

final assignmentProvider = StateNotifierProvider<AssignmentNotifier, List<AssignmentEntity>>((ref) {
  return AssignmentNotifier();
});