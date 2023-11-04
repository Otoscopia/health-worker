import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class ApplicationDataSource {
  final Databases _databases;
  final Storage _storage;

  ApplicationDataSource()
      : _databases = database,
        _storage = cloud;

  Future<DocumentList> getAssignment() async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.assignment,
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<DocumentList> getDoctors() async {
    try {
      final DocumentList response = await _databases.listDocuments(
          databaseId: Env.database,
          collectionId: Env.users,
          queries: [Query.equal('role', 'doctor')]);

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

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

  Future<DocumentList> getRemarks() async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.remarks,
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<DocumentList> getSchools() async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.schools,
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<DocumentList> getScreenings() async {
    try {
      final DocumentList response = await _databases.listDocuments(
        databaseId: Env.database,
        collectionId: Env.screening,
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<Document> getUserDocument() async {
    final fetchCurrentUserUseCase = GetCurrentUserUseCase(
        authenticationRepository: authenticationRepository);

    try {
      final User response = await fetchCurrentUserUseCase.execute();

      final Document document = await _databases.getDocument(
        databaseId: Env.database,
        collectionId: Env.users,
        documentId: response.$id,
      );

      return document;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<File> fetchScreeningImage({required String id}) async {
    try {
      final File response =
          await _storage.getFile(bucketId: Env.screening, fileId: id);

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<File> fetchUserImage({required String id}) async {
    try {
      final File response =
          await _storage.getFile(bucketId: Env.avatarBucket, fileId: id);

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
