import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

class AuthenticationDataSource {
  final Account _account;

  AuthenticationDataSource() : _account = Account(client);

  Future<User> signIn({required String email, required String password}) async {
    try {
      await _account.createEmailSession(email: email, password: password);

      User user = await _account.get();

      return user;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> signOut() async {
    try {
      await _account.deleteSession(sessionId: 'current');
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<User> getCurrentUser() async {
    try {
      User user = await _account.get();

      return user;
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
