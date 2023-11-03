import 'package:health_worker/features/features.dart';

class GetAssignmentUseCase {
  final ApplicationRepository repository;

  GetAssignmentUseCase({required this.repository});

  Future<List<AssignmentEntity>> execute() async {
    List<AssignmentEntity> assignments = await repository.getAssignment();
    return assignments;
  }
}
