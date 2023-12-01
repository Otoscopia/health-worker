import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

/// Local data source for handling assignments using Isar, a fast and reactive
/// object-oriented database for Flutter applications.
///
/// The [LocalAssignmentsDataSource] class provides methods to interact with
/// locally stored assignment data using Isar. It includes operations such as
/// fetching assignments, finding assignments by ID, setting (saving) a list
/// of assignments, and removing all assignments from the local data source.
///
/// Example usage:
/// ```dart
/// import 'local_assignments_data_source.dart';
///
/// //* Create an instance of LocalAssignmentsDataSource.
/// final localAssignmentsDataSource = LocalAssignmentsDataSource();
///
/// //* Fetch all assignments stored locally.
/// final assignments = await localAssignmentsDataSource.getAssignment();
///
/// //* Find a specific assignment by ID.
/// final specificAssignment = await localAssignmentsDataSource.findAssignment(id: 'assignment_id');
///
/// //* Set (save) a list of assignments locally.
/// await localAssignmentsDataSource.setAssignments(assignments: listOfAssignments);
///
/// //* Remove all assignments from the local data source.
/// await localAssignmentsDataSource.removeAssignments();
/// ```
class LocalAssignmentsDataSource {
  /// Isar database instance for handling assignment data locally.
  final Isar _isar;

  /// Constructor for the LocalAssignmentsDataSource class.
  LocalAssignmentsDataSource() : _isar = isar;

  /// Fetches all assignments stored locally.
  ///
  /// This method retrieves all assignment models from the Isar database
  /// and returns them as a list.
  Future<List<AssignmentModel>> getAssignment() async {
    try {
      final List<AssignmentModel> response = await _isar.assignmentModels.where().findAll();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Finds a specific assignment by ID.
  ///
  /// This method searches the Isar database for an assignment model
  /// with the provided ID and returns it.
  Future<AssignmentModel?> findAssignment({required String id}) async {
    try {
      final AssignmentModel? response = await _isar.assignmentModels.filter().nurseEqualTo(id).findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Sets (saves) a list of assignments to the local data source.
  ///
  /// This method clears the existing assignments in the Isar database
  /// and stores the provided list of assignments.
  Future<void> setAssignments({required List<AssignmentModel> assignments}) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.assignmentModels.clear();
        await _isar.assignmentModels.putAll(assignments);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Removes all assignments from the local data source.
  ///
  /// This method clears all assignment models stored in the Isar database.
  Future<void> removeAssignments() async {
    try {
      await _isar.writeTxn(() async {
        await _isar.assignmentModels.clear();
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
