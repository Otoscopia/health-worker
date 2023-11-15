import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class SchoolEntity {
  // school id
  final String id;

  // school name
  final String name;

  // school abbreviation
  final String abbr;

  // school code
  final String code;

  // school address
  final String address;

  SchoolEntity({
    required this.id,
    required this.name,
    required this.abbr,
    required this.code,
    required this.address,
  });

  factory SchoolEntity.fromDocument(Document school) {
    return SchoolEntity(
      id: school.$id,
      name: school.data["name"],
      abbr: school.data["abbr"],
      address: school.data["address"],
      code: school.data["code"],
    );
  }

  // Convert school entity to school model
  factory SchoolEntity.fromModel(SchoolModel school) {
    return SchoolEntity(
      id: school.id,
      name: school.name,
      abbr: school.abbr,
      code: school.code,
      address: school.address,
    );
  }
}
