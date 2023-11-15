import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class RemarksRepositoryImpl implements RemarksRepository {
  final LocalRemarksDataSource _local;
  final RemoteRemarksDataSource _remote;

  RemarksRepositoryImpl({
    required LocalRemarksDataSource local,
    required RemoteRemarksDataSource remote,
  })  : _local = local,
        _remote = remote;

  // Get remarks from remote remarks data source
  @override
  Future<RemarksEntity> getRemoteRemark({required String id}) async {
    final Document response = await _remote.getRemarks(id: id);

    final RemarksEntity remarks = RemarksEntity.fromDocument(response);

    return remarks;
  }

  // Get remarks from local remarks data source
  @override
  Future<void> setRemarkLocal({required RemarksEntity remarks}) async {
    final RemarksModel response = RemarksModel.toModel(remarks);

    await _local.setRemarks(remarks: response);
  }

  // Find remark from local remarks data source
  @override
  Future<RemarksEntity?> findLocalRemark({required String id}) async {
    final RemarksModel? response = await _local.findRemarks(id: id);

    if (response != null) {
      return RemarksEntity.fromModel(response);
    } else {
      return null;
    }
  }

  // Remove remarks from local remarks data source
  @override
  Future<void> removeRemark() async {
    await _local.removeRemarks();
  }
}
