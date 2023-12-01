import 'package:appwrite/models.dart';

import 'package:health_worker/features/authentication/authentication.dart';

/// Abstract class defining the contract for user authentication operations.
///
/// The [AuthenticationRepository] class serves as an interface for handling
/// user authentication operations in the application. Concrete implementations
/// should be created to interact with specific data sources for authentication,
/// such as remote servers or local databases.
///
/// Example usage:
/// ```dart
/// import 'authentication_repository.dart';
/// import 'authentication_repository_impl.dart';
/// import 'authentication_data_source.dart';
///
/// //* Create an instance of AuthenticationDataSource.
/// final authDataSource = AuthenticationDataSource();
///
/// //* Create an instance of AuthenticationRepositoryImpl with the data source.
/// final authRepository = AuthenticationRepositoryImpl(dataSource: authDataSource);
///
/// //* Sign in with email and password.
/// final authEntity = await authRepository.signIn(email: 'user@example.com', password: 'password');
///
/// //* Sign out the current user.
/// await authRepository.signOut();
///
/// //* Fetch information about the current authenticated user.
/// final currentUser = await authRepository.getCurrentUser();
/// ```
abstract class AuthenticationRepository {
  /// Signs in the user with the provided email and password.
  ///
  /// Implementing classes should define the logic to authenticate the user
  /// using the provided credentials and return an [AuthenticationEntity] upon
  /// successful authentication.
  Future<AuthenticationEntity> signIn({
    required String email,
    required String password,
  });

  /// Retrieves information about the current authenticated user.
  ///
  /// Implementing classes should define the logic to fetch details about the
  /// currently authenticated user and return a [User] object.
  Future<User> getCurrentUser();

  /// Signs out the current authenticated user.
  ///
  /// Implementing classes should define the logic to sign out the currently
  /// authenticated user, ensuring a clean exit from the application.
  Future<void> signOut();
}
