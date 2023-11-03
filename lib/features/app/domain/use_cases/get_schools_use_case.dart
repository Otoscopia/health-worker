import 'package:health_worker/features/features.dart';

class GetSchoolsUseCase {
  final ApplicationRepository repository;

  GetSchoolsUseCase({required this.repository});

  Future<List<SchoolEntity>> execute() async {
    return await repository.getSchools();
  }
}
