import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

/// Remote data source for handling doctor entities using Appwrite, an open-source
/// backend server for building web and mobile applications.
///
/// The [RemoteDoctorsDataSource] class provides methods to interact with
/// remotely stored doctor data using Appwrite. It includes operations such
/// as fetching a list of doctors with the 'doctor' role from the Appwrite database.
///
/// Example usage:
/// ```dart
/// import 'remote_doctor_data_source.dart';
///
/// //* Create an instance of RemoteDoctorsDataSource.
/// final remoteDoctorsDataSource = RemoteDoctorsDataSource();
///
/// //* Fetch a list of doctors with the 'doctor' role from the Appwrite database.
/// final doctors = await remoteDoctorsDataSource.getDoctors();
/// ```

class RemoteDoctorsDataSource {
  /// The Databases instance used to interact with the remote database.
  final Databases _databases;

  /// Constructor for the RemoteDoctorsDataSource class.
  ///
  /// Initializes the Databases instance for remote data interaction.
  RemoteDoctorsDataSource() : _databases = database;

  /// Retrieves a list of doctor documents from the Appwrite database.
  ///
  /// Returns a [DocumentList] representing the list of doctor documents.
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
