import 'package:appwrite/models.dart';

import 'package:health_worker/features/authentication/authentication.dart';

/// Implementation of the [AuthenticationRepository] interface.
///
/// The [AuthenticationRepositoryImpl] class implements the methods defined in
/// the [AuthenticationRepository] interface. It acts as a bridge between the
/// application's business logic and the data source for user authentication.
/// This specific implementation utilizes an [AuthenticationDataSource] to
/// perform authentication-related operations.
///
/// Example usage:
/// ```dart
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
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  /// Data source for handling authentication operations.
  final AuthenticationDataSource dataSource;

  /// Constructor for the AuthenticationRepositoryImpl class.
  AuthenticationRepositoryImpl({required this.dataSource});

  /// Retrieves information about the current authenticated user.
  ///
  /// This method delegates the operation to the associated [AuthenticationDataSource]
  /// to fetch details about the currently authenticated user.
  @override
  Future<User> getCurrentUser() async {
    User user = await dataSource.getCurrentUser();

    return user;
  }

  /// Signs in the user with the provided email and password.
  ///
  /// This method delegates the sign-in operation to the associated [AuthenticationDataSource],
  /// and upon successful authentication, it transforms the user data into an
  /// [AuthenticationEntity] before returning it.
  @override
  Future<AuthenticationEntity> signIn({required String email, required String password}) async {
    User account = await dataSource.signIn(email: email, password: password);

    AuthenticationEntity user = AuthenticationEntity(
      email: account.email,
      password: account.hash,
    );

    return user;
  }

  /// Signs out the current authenticated user.
  ///
  /// This method delegates the sign-out operation to the associated [AuthenticationDataSource].
  @override
  Future<void> signOut() {
    return dataSource.signOut();
  }
}
