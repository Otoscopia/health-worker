class AuthenticationEntity {
  final bool loading, error;
  final String? errorMessage;

  AuthenticationEntity({
    required this.loading,
    required this.error,
    this.errorMessage,
  });
}