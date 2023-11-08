import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

class RemoteRemarksDataSource {
  final Databases _databases;

  RemoteRemarksDataSource() : _databases = database;

  // Get remarks from appwrite database
  Future<Document> getRemarks({required String id}) async {
    try {
      final Document response = await _databases.getDocument(
          databaseId: Env.database, collectionId: Env.remarks, documentId: id);

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
