import 'package:health_worker/features/features.dart';

class RemarksUseCases {
  final RemarksRepository _repository;

  RemarksUseCases({required RemarksRepository repository})
      : _repository = repository;

  // Get remarks from remote database using remarks repository
  Future<RemarksEntity> getRemoteRemarks({required String id}) async {
    return await _repository.getRemoteRemark(id: id);
  }

  // Get remarks from local database using remarks repository
  Future<void> setRemarkLocal(RemarksEntity remarks) async {
    return await _repository.setRemarkLocal(remarks: remarks);
  }

  // Find remarks from local database using remarks repository
  Future<RemarksEntity?> findLocalRemark({required String id}) async {
    return await _repository.findLocalRemark(id: id);
  }

  // Remove remarks from local database using remarks repository
  Future<void> removeRemark() async {
    return await _repository.removeRemark();
  }
}
