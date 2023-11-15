import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class RemoteScreeningsDataSource {
  final Databases _database;
  final Storage _storage;

  RemoteScreeningsDataSource()
      : _database = database,
        _storage = cloud;

  // Get screenings from appwrite database
  Future<DocumentList> getScreenings() async {
    try {
      final DocumentList response = await _database.listDocuments(
        databaseId: Env.database,
        collectionId: Env.screening,
        queries: [
          Query.limit(100),
        ],
      );

      return response;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  // TODO: [OT-37] Get screening from appwrite database
  // Get screening from appwrite database
  // Future<void> getScreeningImages({required List<String> ids}) async {
  //   try {
  //     ids.map((list) async {
  //       await _storage.getFile(bucketId: Env.screening, fileId: list).then((value){
  //         final io.File file = io.File("$applicationDirectory/");
  //       });
  //     }).toList();
  //   } on AppwriteException catch (error) {
  //     throw Exception(error.message);
  //   }
  // }

  Future<void> setScreening({required ScreeningEntity screening}) async {
    try {
      await _database.createDocument(
          databaseId: Env.database,
          collectionId: Env.screening,
          documentId: screening.id,
          data: ScreeningEntity.toMap(screening));
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> uploadScreeningImages(
      {required List<String> ids, required List<String> paths}) async {
    try {
      await Future.forEach(paths, (path) async {
        await _storage.createFile(
          bucketId: Env.screening,
          fileId: ids[paths.indexOf(path)],
          file: InputFile.fromPath(path: path),
        );
      });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
