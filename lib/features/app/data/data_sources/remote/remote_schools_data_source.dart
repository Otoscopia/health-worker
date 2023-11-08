import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

class RemoteSchoolsDataSource {
  final Databases _database;

  RemoteSchoolsDataSource() : _database = database;

  Future<DocumentList> getSchools() async {
    try {
      final DocumentList response = await _database.listDocuments(
        databaseId: Env.database,
        collectionId: Env.schools,
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
