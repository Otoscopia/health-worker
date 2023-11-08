
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
}