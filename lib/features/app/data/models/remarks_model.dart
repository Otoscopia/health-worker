import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'remarks_model.g.dart';

@collection
@Name("remarks")
class RemarksModel extends RemarksEntity {
  Id isar = Isar.autoIncrement;

  RemarksModel({
    required super.id,
    required super.screening,
    required super.followUpDate,
    required super.remarks,
    required super.createdAt,
  });

  factory RemarksModel.toModel(RemarksEntity remarks) {
    return RemarksModel(
      id: remarks.id,
      followUpDate: remarks.followUpDate,
      screening: remarks.screening,
      remarks: remarks.remarks,
      createdAt: remarks.createdAt,
    );
  }
}
