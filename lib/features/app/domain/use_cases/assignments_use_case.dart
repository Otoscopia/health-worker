import 'package:health_worker/features/features.dart';

class AssignmentsUseCase {
  final AssignmentsRepository _repository;

  AssignmentsUseCase({required AssignmentsRepository repository})
      : _repository = repository;

  // Get assignments from remote database using the assignment repository
  Future<List<AssignmentEntity>> getRemoteAssignments() async {
    return await _repository.getRemoteAssignments();
  }

  // Get assignments from local database using the assignment repository
  Future<List<AssignmentEntity>> getLocalAssignments() async {
    return await _repository.getLocalAssignments();
  }

  // Set assignments to local database using the assignment repository
  Future<void> setAssignments(List<AssignmentEntity> assignments) async {
    return await _repository.setAssignments(assignments: assignments);
  }

  // find assignment from local database using the assignment repository
  Future<AssignmentEntity?> findAssignment(String id) async {
    return await _repository.findAssignment(id: id);
  }
}
