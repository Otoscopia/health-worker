import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'sync_model.g.dart';

@collection
@Name("sync")
class SyncModel extends SyncEntity {
  Id isar = Isar.autoIncrement;

  SyncModel({
    required super.patient,
    required super.screening,
  });
}
