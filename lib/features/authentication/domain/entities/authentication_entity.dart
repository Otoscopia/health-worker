/// Represents an entity containing authentication information.
///
/// The [AuthenticationEntity] class encapsulates user authentication details
/// such as the user's email and, optionally, the hashed password. This entity
/// is commonly used to model the authentication state within the application.
///
/// Example usage:
/// ```dart
/// import 'authentication_entity.dart';
///
/// //* Create an instance of AuthenticationEntity.
/// final authEntity = AuthenticationEntity(email: 'user@example.com', password: 'hashed_password');
/// ```
class AuthenticationEntity {
  /// User's email.
  final String email;

  /// User's hashed password (optional).
  final String? password;

  /// Constructor for AuthenticationEntity.
  ///
  /// The [email] parameter is required, and the [password] parameter is optional.
  const AuthenticationEntity({
    required this.email,
    this.password,
  });
}
