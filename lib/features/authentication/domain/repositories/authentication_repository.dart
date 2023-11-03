import 'package:appwrite/models.dart';

import 'package:health_worker/features/authentication/authentication.dart';

abstract class AuthenticationRepository {
  Future<AuthenticationEntity> signIn({
    required String email,
    required String password,
  });

  Future<User> getCurrentUser();

  Future<void> signOut();
}
