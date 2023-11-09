import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

class RemoteAssignmentsDataSource {
  final Databases _databases;

  RemoteAssignmentsDataSource() : _databases = database;

  // Get assignments from appwrite database
  Future<DocumentList> getAssignment({required String id}) async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.assignment,
        queries: [
          Query.equal("nurse", id), Query.limit(100),
        ],
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
