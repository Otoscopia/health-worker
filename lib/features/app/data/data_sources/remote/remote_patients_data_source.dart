import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class RemotePatientsDataSource {
  final Databases _databases;

  RemotePatientsDataSource() : _databases = database;

  // Get patients from appwrite  database
  Future<DocumentList> getPatients() async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.patients,
        queries: [
          Query.limit(100),
        ],
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  // Set patients to appwrite database
  Future<void> setPatient({required PatientEntity patient}) async {
    try {
      await _databases.createDocument(
        databaseId: Env.database,
        collectionId: Env.patients,
        documentId: patient.id,
        data: PatientEntity.toMap(patient),
      );
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
