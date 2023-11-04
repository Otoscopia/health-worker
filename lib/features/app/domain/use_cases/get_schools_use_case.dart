import 'package:health_worker/features/features.dart';

class GetSchoolsRemoteUseCase {
  final ApplicationRepository repository;

  GetSchoolsRemoteUseCase({required this.repository});

  Future<List<SchoolEntity>> execute() async {
    return await repository.getSchoolsRemote();
  }
}

class GetSchoolsLocalUseCase {
  final ApplicationRepository repository;

  GetSchoolsLocalUseCase({required this.repository});

  Future<List<SchoolEntity>> execute() async {
    return await repository.getSchoolsLocal();
  }
}
