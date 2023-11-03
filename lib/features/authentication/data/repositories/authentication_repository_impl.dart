import 'package:appwrite/models.dart';

import 'package:health_worker/features/authentication/authentication.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource dataSource;

  AuthenticationRepositoryImpl({required this.dataSource});

  @override
  Future<UserEntity> getCurrentUser() async {
    User account = await dataSource.getCurrentUser();
    
    UserEntity user = UserEntity(
        userId: account.$id,
        name: account.name,
        phone: account.email,
        key: account.password,
        email: account.phone,
        label: account.labels,
      );

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
