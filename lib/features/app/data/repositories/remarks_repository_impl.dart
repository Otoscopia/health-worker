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

    final RemarksEntity remarks = RemarksEntity(
      id: response.$id,
      followUpDate: response.data["followUpDate"],
      screening: response.data["screening"]["\$id"],
      remarks: response.data["remarks"],
      createdAt: response.$createdAt,
    );

    return remarks;
  }

  // Get remarks from local remarks data source
  @override
  Future<void> setRemarkLocal({required RemarksEntity remarks}) async {
    final RemarksModel response = RemarksModel(
      id: remarks.id,
      followUpDate: remarks.followUpDate,
      screening: remarks.screening,
      remarks: remarks.remarks,
      createdAt: remarks.createdAt,
    );

    await _local.setRemarks(remarks: response);
  }

  // Find remark from local remarks data source
  @override
  Future<RemarksEntity?> findLocalRemark({required String id}) async {
    final RemarksModel? response = await _local.findRemarks(id: id);

    if (response != null) {
      return RemarksEntity(
        id: response.id,
        followUpDate: response.followUpDate,
        screening: response.screening,
        remarks: response.remarks,
        createdAt: response.createdAt,
      );
    } else {
      return null;
    }
  }
}
