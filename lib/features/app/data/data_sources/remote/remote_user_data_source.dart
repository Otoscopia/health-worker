import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class RemoteUserDataSource {
  final Databases _database;
  final Account _account;

  RemoteUserDataSource()
      : _database = database,
        _account = Account(client);

  Future<Document> getUser() async {
    try {
      final User response = await _account.get();

      final Document document = await _database.getDocument(
        databaseId: Env.database,
        collectionId: Env.users,
        documentId: response.$id,
      );

      return document;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setUser({required UserEntity user}) async {
    try {
      await _database.updateDocument(
          databaseId: Env.database,
          collectionId: Env.users,
          documentId: user.id,
          data: {
            "name": user.name,
            "email": user.email,
            "phone": user.phone,
            "role": user.role,
            "workAddress": user.workAddress,
          });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
