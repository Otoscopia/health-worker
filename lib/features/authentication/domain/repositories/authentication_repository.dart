
import 'package:health_worker/features/authentication/authentication.dart';

abstract class AuthenticationRepository {
  Future<AuthenticationEntity> signIn({
    required String email,
    required String password,
  });

  Future<UserEntity> getCurrentUser();

  Future<void> signOut();
}
