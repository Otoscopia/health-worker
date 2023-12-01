import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

/// Remote data source for handling assignments using Appwrite, an open-source
/// backend server for building web and mobile applications.
///
/// The [RemoteAssignmentsDataSource] class provides methods to interact with
/// remotely stored assignment data using Appwrite. It includes operations such
/// as fetching assignments for a specific nurse ID from the Appwrite database.
///
/// Example usage:
/// ```dart
/// import 'remote_assignments_data_source.dart';
///
/// //* Create an instance of RemoteAssignmentsDataSource.
/// final remoteAssignmentsDataSource = RemoteAssignmentsDataSource();
///
/// //* Fetch assignments for a specific nurse ID from the Appwrite database.
/// final assignments = await remoteAssignmentsDataSource.getAssignment(id: 'nurse_id');
/// ```
class RemoteAssignmentsDataSource {
  /// Appwrite database instance for handling assignment data remotely.
  final Databases _databases;

  /// Constructor for the RemoteAssignmentsDataSource class.
  RemoteAssignmentsDataSource() : _databases = database;

  /// Fetches assignments for a specific nurse ID from the Appwrite database.
  ///
  /// This method queries the Appwrite database to retrieve a list of
  /// assignments associated with the provided nurse ID.
  Future<DocumentList> getAssignment({required String id}) async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.assignment,
        queries: [
          Query.equal("nurse", id),
          Query.limit(100),
        ],
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
