import 'package:health_worker/features/features.dart';

class GetRemarksUseCaseRemote {
  final ApplicationRepository repository;

  GetRemarksUseCaseRemote({required this.repository});

  Future<RemarksEntity> execute({required String id}) async {
    return await repository.getRemarksRemote(id: id);
  }
}

class GetRemarksUseCaseLocal {
  final ApplicationRepository repository;

  GetRemarksUseCaseLocal({required this.repository});

  Future<RemarksEntity?> execute({required String id}) async {
    return await repository.getRemarksLocal(id: id);
  }
}
