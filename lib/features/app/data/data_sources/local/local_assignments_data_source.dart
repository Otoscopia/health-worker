import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalAssignmentsDataSource {
  final Isar _isar;

  LocalAssignmentsDataSource() : _isar = isar;

  // Get assignment from isar database
  Future<List<AssignmentModel>> getAssignment() async {
    try {
      final List<AssignmentModel> response = await _isar.assignmentModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Find assignment from isar database
  Future<AssignmentModel?> findAssignment({required String id}) async {
    try {
      final AssignmentModel? response = await _isar.assignmentModels.filter().nurseEqualTo(id).findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Set assignment to isar database
  Future<void> setAssignments({required List<AssignmentModel> assignments}) async {
    try {
      // write assignments collection to isar database
      await _isar.writeTxn(() async {
        // clear assignments collection
        await _isar.assignmentModels.clear();
        // write assignments collection
        await _isar.assignmentModels.putAll(assignments);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Remove assignment from isar database
  Future<void> removeAssignments() async {
    try {
      await _isar.writeTxn(() async {
        // clear assignments collection
        await _isar.assignmentModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
