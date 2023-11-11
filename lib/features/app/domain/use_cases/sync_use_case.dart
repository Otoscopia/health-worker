import 'package:health_worker/features/features.dart';

class SyncUseCases {
  final SyncRepository _syncRepository;

  SyncUseCases({required SyncRepository repository}) : _syncRepository = repository;

  Future<void> addSync({required SyncModel sync}) async => await _syncRepository.addSync(sync: sync);

  Future<void> sync() async => await _syncRepository.sync();
}