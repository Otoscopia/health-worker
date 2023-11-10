import 'package:health_worker/features/features.dart';

class SyncUseCase {
  final SyncRepository _syncRepository;

  SyncUseCase(this._syncRepository);

  Future<void> call() async {
    await _syncRepository.sync();
  }
}