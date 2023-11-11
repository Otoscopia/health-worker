import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureAssignmentProvider = FutureProvider<List<AssignmentEntity>>((ref) async {
  ref.watch(authenticationStateProvider);
  
  final UserEntity user = ref.watch(userProvider);

  late final List<AssignmentEntity> assignments;

  if (ref.read(networkProvider)) {
    assignments = await useCases.assignmentsUseCase.getRemoteAssignments(id: user.id);
    ref.read(assignmentProvider.notifier).setAssignment(assignments);
  } else {
    assignments = await useCases.assignmentsUseCase.getLocalAssignments();
  }

  await useCases.assignmentsUseCase.setAssignments(assignments);
  return assignments;
});

class AssignmentNotifier extends StateNotifier<List<AssignmentEntity>> {
  AssignmentNotifier() : super([]);

  setAssignment(List<AssignmentEntity> assignment) => state = assignment;
}

final assignmentProvider =
    StateNotifierProvider<AssignmentNotifier, List<AssignmentEntity>>((ref) {
  return AssignmentNotifier();
});
