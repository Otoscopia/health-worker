
import 'package:health_worker/features/authentication/authentication.dart';

class SignOutUseCase {
  final AuthenticationRepository authenticationRepository;

  SignOutUseCase({required this.authenticationRepository});

  Future<void> execute() async {
    return await authenticationRepository.signOut();
  }
}
