class AuthenticationEntity {
  bool error, loading;
  String? errorMesage;
  bool authenticated;

  AuthenticationEntity({required this.loading, required this.error, this.errorMesage, required this.authenticated});
}
