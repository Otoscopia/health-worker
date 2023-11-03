class AuthenticationEntity {
  // user email
  final String email;

  // user hashed password
  final String? password;

  AuthenticationEntity({
    required this.email,
    this.password,
  });
}
