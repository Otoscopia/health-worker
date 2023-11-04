import 'package:health_worker/features/features.dart';

class GetRemoteAssignmentUseCase {
  final ApplicationRepository repository;

  GetRemoteAssignmentUseCase({required this.repository});

  Future<List<AssignmentEntity>> execute() async {
    List<AssignmentEntity> assignments = await repository.getAssignmentRemote();
    return assignments;
  }
}

class GetLocalAssignmentUseCase {
  final ApplicationRepository repository;

  GetLocalAssignmentUseCase({required this.repository});

  Future<List<AssignmentEntity>> execute() async {
    List<AssignmentEntity> assignments = await repository.getAssignmentLocal();
    return assignments;
  }
}
