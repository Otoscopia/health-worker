
import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

class RemarksEntity {
  // remarks id
  final String id;

  // screening id (foreign key)
  final String screening;

  // remarks follow up date
  final String followUpDate;

  // medical record comment
  final String remarks;

  // remarks created date
  final String? createdAt;

  RemarksEntity({
    required this.id,
    required this.screening,
    required this.followUpDate,
    required this.remarks,
    required this.createdAt,
  });

  factory RemarksEntity.fromDocument(Document remarks) {
    return RemarksEntity(
      id: remarks.$id,
      followUpDate: remarks.data["followUpDate"],
      screening: remarks.data["screening"]["\$id"],
      remarks: remarks.data["remarks"],
      createdAt: remarks.$createdAt,
    );
  }

  factory RemarksEntity.fromModel(RemarksModel remarks) {
    return RemarksEntity(
      id: remarks.id,
      followUpDate: remarks.followUpDate,
      screening: remarks.screening,
      remarks: remarks.remarks,
      createdAt: remarks.createdAt,
    );
  }
}