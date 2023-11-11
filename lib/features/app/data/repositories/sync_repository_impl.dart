import 'package:health_worker/features/features.dart';

class SyncRepositoryImpl implements SyncRepository {
  final SyncDataSource _sync;

  SyncRepositoryImpl({required SyncDataSource sync}) : _sync = sync;

  @override
  Future<void> sync() async {
    await _sync.sync();
  }

  @override
  Future<void> addSync({required SyncModel sync}) async {
    await _sync.addSync(sync: sync);
  }
}
