import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';

part 'school_model.g.dart';

@collection
@Name("schools")
class SchoolModel extends SchoolEntity {
  Id isar = Isar.autoIncrement;

  SchoolModel(
      {required super.id,
      required super.name,
      required super.code,
      required super.address});
}
