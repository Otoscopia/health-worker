import 'package:health_worker/features/features.dart';

abstract class AssignmentsRepository {
  // Get assignment from remote database
  Future<List<AssignmentEntity>> getRemoteAssignments({required String id});

  // Get assignment from local database
  Future<List<AssignmentEntity>> getLocalAssignments();

  // Set assignment to local database
  Future<void> setAssignments({required List<AssignmentEntity> assignments});

  // find assignment from local database
  Future<AssignmentEntity?> findAssignment({required String id});
}
