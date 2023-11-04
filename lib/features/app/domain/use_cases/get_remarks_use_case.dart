import 'package:health_worker/features/features.dart';

class GetRemarksUseCase {
  final ApplicationRepository repository;

  GetRemarksUseCase({required this.repository});

  Future<List<RemarksEntity>> execute() async {
    return await repository.getRemarks();
  }
}
