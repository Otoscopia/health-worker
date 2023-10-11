class AuthenticationEntity {
  final bool? authenticated, signedOut;
  final bool loading, error;
  final String? errorMessage;

  AuthenticationEntity({
    required this.loading,
    required this.error,
    this.errorMessage,
    this.authenticated,
    this.signedOut
  });
}