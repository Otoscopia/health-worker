import 'package:health_worker/features/features.dart';

abstract class SyncRepository {
  Future<void> sync();
  Future<void> addSync({required SyncModel sync});
}