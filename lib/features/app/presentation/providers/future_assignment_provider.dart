import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

Future<List<AssignmentEntity>> assignments(WidgetRef ref, String id) async {
  final AssignmentsUseCase useCase = useCases.assignmentsUseCase;

  late final List<AssignmentEntity> assignments;

  if (ref.read(networkProvider)) {
    assignments = await useCase.getRemoteAssignments(id: id);
    ref.read(assignmentsProvider.notifier).setAssignment(assignments);
  } else {
    assignments = await useCase.getLocalAssignments();
  }

  await useCases.assignmentsUseCase.setAssignments(assignments);

  return assignments;
}

class AssignmentNotifier extends StateNotifier<List<AssignmentEntity>> {
  AssignmentNotifier() : super([]);

  setAssignment(List<AssignmentEntity> assignment) => state = assignment;
}

final assignmentsProvider =
    StateNotifierProvider<AssignmentNotifier, List<AssignmentEntity>>((ref) {
  return AssignmentNotifier();
});
