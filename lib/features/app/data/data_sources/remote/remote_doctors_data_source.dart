import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

class RemoteDoctorsDataSource {
  final Databases _databases;

  RemoteDoctorsDataSource() : _databases = database;

  // Get assignments from appwrite database
  Future<DocumentList> getDoctors() async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.users,
        queries: [
          Query.equal('role', 'doctor'),
          Query.limit(100),
        ],
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
