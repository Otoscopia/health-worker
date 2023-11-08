class AssignmentEntity {
  // assignment id
  final String id;

  // nurse id
  final String nurse;

  // school id
  final String school;

  // assignment start date
  final String startDate;

  // assignment end date
  final String? endDate;

  AssignmentEntity({
    required this.id,
    required this.nurse,
    required this.school,
    required this.startDate,
    required this.endDate,
  });
}
