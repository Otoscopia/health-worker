import 'package:health_worker/features/features.dart';

abstract class RemarksRepository {
  // Get remarks from remote database
  Future<RemarksEntity> getRemoteRemark({required String id});

  // Get remark from local database
  Future<void> setRemarkLocal({required RemarksEntity remarks});

  // Find remark to local database
  Future<RemarksEntity?> findLocalRemark({required String id}); 

  // Remove remark from local database
  Future<void> removeRemark();
}