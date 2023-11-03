
import 'package:health_worker/features/authentication/authentication.dart';

class GetCurrentUserUseCase {
  final AuthenticationRepository authenticationRepository;

  GetCurrentUserUseCase({required this.authenticationRepository});

  Future<UserEntity> execute() async {
    return await authenticationRepository.getCurrentUser();
  }
}
