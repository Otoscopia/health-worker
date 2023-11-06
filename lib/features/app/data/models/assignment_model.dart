import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'assignment_model.g.dart';

@collection
@Name("assignments")
class AssignmentModel extends AssignmentEntity {
  Id isar = Isar.autoIncrement;

  AssignmentModel(
      {required super.id,
      required super.nurse,
      required super.school,
      required super.startDate,
      super.endDate});
}
