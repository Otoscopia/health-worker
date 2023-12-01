import 'package:health_worker/features/features.dart';

/// Abstract class defining the contract for assignment-related operations.
///
/// The [AssignmentsRepository] class serves as an interface for handling
/// assignment operations in the application. Concrete implementations
/// should be created to interact with specific data sources for assignments,
/// such as remote servers or local databases.
///
/// Example usage:
/// ```dart
/// import 'assignment_repository.dart';
/// import 'assignment_repository_impl.dart';
///
/// //* Create an instance of AssignmentsRepositoryImpl.
/// final assignmentsRepository = AssignmentsRepositoryImpl();
///
/// //* Fetch remote assignments for a specific ID.
/// final remoteAssignments = await assignmentsRepository.getRemoteAssignments(id: 'user_id');
///
/// //* Fetch local assignments.
/// final localAssignments = await assignmentsRepository.getLocalAssignments();
///
/// //* Set (save) a list of assignments.
/// await assignmentsRepository.setAssignments(assignments: listOfAssignments);
///
/// //* Find a specific assignment by ID.
/// final assignment = await assignmentsRepository.findAssignment(id: 'assignment_id');
///
/// //* Remove all assignments.
/// await assignmentsRepository.removeAssignments();
/// ```
abstract class AssignmentsRepository {
  /// Retrieves a list of assignments from a remote data source for a specific ID.
  ///
  /// Implementing classes should define the logic to fetch assignments
  /// from a remote server or external service, based on the provided ID.
  Future<List<AssignmentEntity>> getRemoteAssignments({required String id});

  /// Retrieves a list of assignments from a local data source.
  ///
  /// Implementing classes should define the logic to fetch assignments
  /// stored locally on the device or in a local database.
  Future<List<AssignmentEntity>> getLocalAssignments();

  /// Sets (saves) a list of assignments to the data source.
  ///
  /// Implementing classes should define the logic to store a list of assignments
  /// in a remote server or a local database.
  Future<void> setAssignments({required List<AssignmentEntity> assignments});

  /// Finds a specific assignment by ID.
  ///
  /// Implementing classes should define the logic to locate and return
  /// a specific assignment based on the provided ID.
  Future<AssignmentEntity?> findAssignment({required String id});

  /// Removes all assignments from the data source.
  ///
  /// Implementing classes should define the logic to delete or clear all
  /// assignments stored in the data source, whether remote or local.
  Future<void> removeAssignments();
}
