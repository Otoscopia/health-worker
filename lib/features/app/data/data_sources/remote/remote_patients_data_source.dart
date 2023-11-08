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
          data: {
            "name": patient.name,
            "gender": patient.gender,
            "birthdate": patient.birthdate,
            "school": patient.school,
            "schoolID": patient.schoolID,
            "guardiansName": patient.guardiansName,
            "guardiansPhone": patient.guardiansPhone,
            "creator": patient.creator,
            "doctor": patient.doctor,
          });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
