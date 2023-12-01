import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import 'package:health_worker/core/core.dart';

/// Handles data source operations related to user authentication.
///
/// The [AuthenticationDataSource] class provides methods to interact with
/// Appwrite's authentication services, including signing in, signing out, and
/// fetching information about the current authenticated user. It uses the
/// Appwrite SDK's [Account] class for these operations.
///
/// Example usage:
/// ```dart
/// import 'authentication_data_source.dart';
///
/// //* Create an instance of AuthenticationDataSource.
/// final authDataSource = AuthenticationDataSource();
///
/// //* Sign in with email and password.
/// final user = await authDataSource.signIn(email: 'user@example.com', password: 'password');
///
/// //* Sign out the current session.
/// await authDataSource.signOut();
///
/// //* Fetch information about the current authenticated user.
/// final currentUser = await authDataSource.getCurrentUser();
/// ```
class AuthenticationDataSource {
  /// Appwrite Account instance for authentication operations.
  final Account _account;

  /// Constructor for the AuthenticationDataSource class.
  AuthenticationDataSource() : _account = Account(client);

  /// Signs in the user with the provided email and password.
  ///
  /// This method uses the Appwrite SDK to create an email session, and upon
  /// successful authentication, it fetches and returns information about the
  /// authenticated user.
  Future<User> signIn({required String email, required String password}) async {
    try {
      // Create an email session.
      await _account.createEmailSession(email: email, password: password);

      // Fetch the current user.
      User user = await _account.get();

      // Return the user.
      return user;
    } on AppwriteException catch (error) {
      // Throw an exception if an error occurs.
      throw Exception(error.message);
    }
  }

  /// Signs out the current authenticated user's session.
  ///
  /// This method uses the Appwrite SDK to delete the session with the specified
  /// session ID ('current').
  Future<void> signOut() async {
    try {
      // Delete the current session.
      await _account.deleteSession(sessionId: 'current');
    } on AppwriteException catch (error) {
      // Throw an exception if an error occurs.
      throw Exception(error.message);
    }
  }

  /// Fetches information about the current authenticated user.
  ///
  /// This method uses the Appwrite SDK to retrieve details about the current
  /// authenticated user.
  Future<User> getCurrentUser() async {
    try {
      // Fetch the current user.
      User user = await _account.get();

      // Return the user.
      return user;
    } on AppwriteException catch (error) {
      // Throw an exception if an error occurs.
      throw Exception(error.message);
    }
  }
}
