import 'package:appwrite/models.dart';

import 'package:health_worker/features/authentication/authentication.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource dataSource;

  AuthenticationRepositoryImpl({required this.dataSource});

  @override
  Future<User> getCurrentUser() async {
    User user = await dataSource.getCurrentUser();
  
    return user;
  }

  @override
  Future<AuthenticationEntity> signIn({required String email, required String password}) async {
    User account = await dataSource.signIn(email: email, password: password);

    AuthenticationEntity user = AuthenticationEntity(
      email: account.email,
      password: account.hash,
    );

    return user;
  }

  @override
  Future<void> signOut() {
    return dataSource.signOut();
  }
}
