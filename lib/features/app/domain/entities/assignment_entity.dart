import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

/// Represents an assignment entity that includes information about a nurse's
/// assignment to a specific school, along with the start and end dates.
///
/// This class is used to model assignment-related data within the application.
///
/// Example usage:
/// ```dart
/// //* Create an instance of AssignmentEntity.
/// final assignment = AssignmentEntity(
///   id: 'assignment_id',
///   nurse: 'nurse_id',
///   school: 'school_id',
///   startDate: '2023-12-01',
///   endDate: '2024-12-01',
/// );
///
/// //* Create an instance of AssignmentEntity from a Document.
/// final assignmentFromDocument = AssignmentEntity.fromDocument(document);
///
/// //* Create an instance of AssignmentEntity from an AssignmentModel.
/// final assignmentFromModel = AssignmentEntity.fromModel(assignmentModel);
/// ```
class AssignmentEntity {
  /// The unique identifier for the assignment.
  final String id;

  /// The unique identifier of the nurse associated with the assignment.
  final String nurse;

  /// The unique identifier of the school to which the nurse is assigned.
  final String school;

  /// The start date of the assignment.
  final String startDate;

  /// The optional end date of the assignment.
  final String? endDate;

  /// Constructor for the AssignmentEntity class.
  AssignmentEntity({
    required this.id,
    required this.nurse,
    required this.school,
    required this.startDate,
    required this.endDate,
  });

  /// Factory method to create an instance of AssignmentEntity from a Document.
  ///
  /// This method extracts data from the provided Document and constructs an
  /// AssignmentEntity instance.
  factory AssignmentEntity.fromDocument(Document document) {
    return AssignmentEntity(
      id: document.$id,
      nurse: document.data['nurse']['\$id'],
      school: document.data['school']['\$id'],
      startDate: document.data['startDate'],
      endDate: document.data['endDate'] ?? "",
    );
  }

  /// Factory method to create an instance of AssignmentEntity from an AssignmentModel.
  ///
  /// This method constructs an AssignmentEntity instance using data from the
  /// provided AssignmentModel.
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
