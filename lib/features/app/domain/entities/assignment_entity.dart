import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

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

  // assignment constructor with required parameters
  AssignmentEntity({
    required this.id,
    required this.nurse,
    required this.school,
    required this.startDate,
    required this.endDate,
  });

  // assignment factory constructor from document
  factory AssignmentEntity.fromDocument(Document document) {
    return AssignmentEntity(
      id: document.$id,
      nurse: document.data['nurse']['\$id'],
      school: document.data['school']['\$id'],
      startDate: document.data['startDate'],
      endDate: document.data['endDate'] ?? "",
    );
  }

  // assignment factory constructor from model
  factory AssignmentEntity.fromModel(AssignmentModel assignment) {
    return AssignmentEntity(
      id: assignment.id,
      nurse: assignment.nurse,
      school: assignment.school,
      startDate: assignment.startDate,
      endDate: assignment.endDate,
    );
  }
}
