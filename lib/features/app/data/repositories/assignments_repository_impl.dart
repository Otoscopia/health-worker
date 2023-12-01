import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

/// Implementation of the [AssignmentsRepository] interface that combines
/// both remote and local data sources for managing assignment-related operations.
///
/// The [AssignmentsRepositoryImpl] class integrates a [RemoteAssignmentsDataSource]
/// for handling assignments from a remote Appwrite database and a
/// [LocalAssignmentsDataSource] for handling assignments stored locally using Isar.
/// This class includes methods to fetch assignments from both sources, set (save)
/// assignments locally, find assignments by ID, and remove all assignments.
///
/// Example usage:
/// ```dart
/// import 'assignments_repository.dart';
/// import 'assignments_repository_impl.dart';
/// import 'remote_assignments_data_source.dart';
/// import 'local_assignments_data_source.dart';
///
/// //* Create instances of RemoteAssignmentsDataSource and LocalAssignmentsDataSource.
/// final remoteDataSource = RemoteAssignmentsDataSource();
/// final localDataSource = LocalAssignmentsDataSource();
///
/// //* Create an instance of AssignmentsRepositoryImpl.
/// final assignmentsRepository = AssignmentsRepositoryImpl(
///   remote: remoteDataSource,
///   local: localDataSource,
/// );
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
class AssignmentsRepositoryImpl implements AssignmentsRepository {
  /// Remote data source for handling assignments from the Appwrite database.
  final RemoteAssignmentsDataSource _remote;

  /// Local data source for handling assignments stored using Isar.
  final LocalAssignmentsDataSource _local;

  /// Constructor for the AssignmentsRepositoryImpl class.
  AssignmentsRepositoryImpl({
    required RemoteAssignmentsDataSource remote,
    required LocalAssignmentsDataSource local,
  })   : _remote = remote,
        _local = local;

  /// Fetches assignments from a remote Appwrite database for a specific nurse ID.
  ///
  /// This method queries the Appwrite database to retrieve a list of
  /// assignments associated with the provided nurse ID.
  ///
  /// Returns a list of [AssignmentEntity] representing the fetched assignments.
  @override
  Future<List<AssignmentEntity>> getRemoteAssignments({required String id}) async {
    final DocumentList response = await _remote.getAssignment(id: id);

    final List<AssignmentEntity> assignments =
        response.documents.map((Document document) {
      return AssignmentEntity.fromDocument(document);
    }).toList();

    return assignments;
  }

  /// Fetches assignments stored locally using Isar.
  ///
  /// Returns a list of [AssignmentEntity] representing the local assignments.
  @override
  Future<List<AssignmentEntity>> getLocalAssignments() async {
    final List<AssignmentModel> response = await _local.getAssignment();

    final List<AssignmentEntity> assignments =
        response.map((AssignmentModel assignment) {
      return AssignmentEntity.fromModel(assignment);
    }).toList();

    return assignments;
  }

  /// Sets (saves) a list of assignments to the local data source.
  ///
  /// This method clears the existing assignments in the Isar database
  /// and stores the provided list of assignments.
  @override
  Future<void> setAssignments({required List<AssignmentEntity> assignments}) async {
    final List<AssignmentModel> models =
        assignments.map((AssignmentEntity assignment) {
      return AssignmentModel.toModel(assignment);
    }).toList();

    await _local.setAssignments(assignments: models);
  }

  /// Finds a specific assignment by ID from the local data source.
  ///
  /// Returns a [AssignmentEntity] representing the found assignment, or null
  /// if no assignment is found with the provided ID.
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

  /// Removes all assignments from the local data source.
  ///
  /// This method clears all assignment models stored in the Isar database.
  @override
  Future<void> removeAssignments() {
    return _local.removeAssignments();
  }
}
