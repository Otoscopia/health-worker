import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class AssignmentsRepositoryImpl implements AssignmentsRepository {
  final RemoteAssignmentsDataSource _remote;
  final LocalAssignmentsDataSource _local;

  AssignmentsRepositoryImpl(
      {required RemoteAssignmentsDataSource remote,
      required LocalAssignmentsDataSource local})
      : _remote = remote,
        _local = local;

  // Get assignments from remote assignment data source
  @override
  Future<List<AssignmentEntity>> getRemoteAssignments({required String id}) async {
    final DocumentList response = await _remote.getAssignment(id: id);

    final List<AssignmentEntity> assignments =
        response.documents.map((Document document) {
      return AssignmentEntity.fromDocument(document);
    }).toList();

    return assignments;
  }

  // Get assignments from local assignment data source
  @override
  Future<List<AssignmentEntity>> getLocalAssignments() async {
    final List<AssignmentModel> response = await _local.getAssignment();

    final List<AssignmentEntity> assignments =
        response.map((AssignmentModel assignment) {
      return AssignmentEntity.fromModel(assignment);
    }).toList();

    return assignments;
  }

  // Set assignments to local assignment data source
  @override
  Future<void> setAssignments({required List<AssignmentEntity> assignments}) async {
    final List<AssignmentModel> models =
        assignments.map((AssignmentEntity assignment) {
      return AssignmentModel.toModel(assignment);
    }).toList();

    await _local.setAssignments(assignments: models);
  }

  // Find assignment from local assignment data source
  @override
  Future<AssignmentEntity?> findAssignment({required String id}) async {
    final AssignmentModel? response = await _local.findAssignment(id: id);
    if (response == null) {
      return null;
    } else {
      AssignmentEntity assignment = AssignmentEntity.fromModel(response);

      return assignment;
    }
  }
  
  @override
  Future<void> removeAssignments() {
    return _local.removeAssignments();
  }
}
