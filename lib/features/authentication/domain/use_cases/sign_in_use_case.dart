import 'package:health_worker/features/authentication/authentication.dart';

class SignInUseCase {
  final AuthenticationRepository authenticationRepository;

  SignInUseCase({required this.authenticationRepository});

  Future<AuthenticationEntity> execute({required String email, required String password}) async {
    AuthenticationEntity entity = await authenticationRepository.signIn(email: email, password: password);
    return entity;
  }
}