import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class GetCurrentUserUseCase {
  final AuthenticationRepository authenticationRepository;

  GetCurrentUserUseCase({required this.authenticationRepository});

  Future<User> execute() async {
    return await authenticationRepository.getCurrentUser();
  }
}
