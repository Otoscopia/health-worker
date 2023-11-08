// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screening_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetScreeningModelCollection on Isar {
  IsarCollection<ScreeningModel> get screeningModels => this.collection();
}

const ScreeningModelSchema = CollectionSchema(
  name: r'screenings',
  id: 8840044141822124767,
  properties: {
    r'assignment': PropertySchema(
      id: 0,
      name: r'assignment',
      type: IsarType.string,
    ),
    r'chiefComplaint': PropertySchema(
      id: 1,
      name: r'chiefComplaint',
      type: IsarType.string,
    ),
    r'chiefComplaintMessage': PropertySchema(
      id: 2,
      name: r'chiefComplaintMessage',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.string,
    ),
    r'hasAllergies': PropertySchema(
      id: 4,
      name: r'hasAllergies',
      type: IsarType.string,
    ),
    r'hasSimilarCondition': PropertySchema(
      id: 5,
      name: r'hasSimilarCondition',
      type: IsarType.string,
    ),
    r'healthWorkerRemarks': PropertySchema(
      id: 6,
      name: r'healthWorkerRemarks',
      type: IsarType.string,
    ),
    r'height': PropertySchema(
      id: 7,
      name: r'height',
      type: IsarType.string,
    ),
    r'historyOfIllness': PropertySchema(
      id: 8,
      name: r'historyOfIllness',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 9,
      name: r'id',
      type: IsarType.string,
    ),
    r'images': PropertySchema(
      id: 10,
      name: r'images',
      type: IsarType.stringList,
    ),
    r'patient': PropertySchema(
      id: 11,
      name: r'patient',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 12,
      name: r'status',
      type: IsarType.string,
    ),
    r'takingMedication': PropertySchema(
      id: 13,
      name: r'takingMedication',
      type: IsarType.string,
    ),
    r'takingMedicationMessage': PropertySchema(
      id: 14,
      name: r'takingMedicationMessage',
      type: IsarType.string,
    ),
    r'temperature': PropertySchema(
      id: 15,
      name: r'temperature',
      type: IsarType.string,
    ),
    r'typeOfAllergies': PropertySchema(
      id: 16,
      name: r'typeOfAllergies',
      type: IsarType.string,
    ),
    r'undergoSurgery': PropertySchema(
      id: 17,
      name: r'undergoSurgery',
      type: IsarType.string,
    ),
    r'weight': PropertySchema(
      id: 18,
      name: r'weight',
      type: IsarType.string,
    )
  },
  estimateSize: _screeningModelEstimateSize,
  serialize: _screeningModelSerialize,
  deserialize: _screeningModelDeserialize,
  deserializeProp: _screeningModelDeserializeProp,
  idName: r'isar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _screeningModelGetId,
  getLinks: _screeningModelGetLinks,
  attach: _screeningModelAttach,
  version: '3.1.0+1',
);

int _screeningModelEstimateSize(
  ScreeningModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.assignment.length * 3;
  bytesCount += 3 + object.chiefComplaint.length * 3;
  bytesCount += 3 + object.chiefComplaintMessage.length * 3;
  bytesCount += 3 + object.createdAt.length * 3;
  bytesCount += 3 + object.hasAllergies.length * 3;
  bytesCount += 3 + object.hasSimilarCondition.length * 3;
  bytesCount += 3 + object.healthWorkerRemarks.length * 3;
  bytesCount += 3 + object.height.length * 3;
  bytesCount += 3 + object.historyOfIllness.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.images.length * 3;
  {
    for (var i = 0; i < object.images.length; i++) {
      final value = object.images[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.patient.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.takingMedication.length * 3;
  bytesCount += 3 + object.takingMedicationMessage.length * 3;
  bytesCount += 3 + object.temperature.length * 3;
  bytesCount += 3 + object.typeOfAllergies.length * 3;
  bytesCount += 3 + object.undergoSurgery.length * 3;
  bytesCount += 3 + object.weight.length * 3;
  return bytesCount;
}

void _screeningModelSerialize(
  ScreeningModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.assignment);
  writer.writeString(offsets[1], object.chiefComplaint);
  writer.writeString(offsets[2], object.chiefComplaintMessage);
  writer.writeString(offsets[3], object.createdAt);
  writer.writeString(offsets[4], object.hasAllergies);
  writer.writeString(offsets[5], object.hasSimilarCondition);
  writer.writeString(offsets[6], object.healthWorkerRemarks);
  writer.writeString(offsets[7], object.height);
  writer.writeString(offsets[8], object.historyOfIllness);
  writer.writeString(offsets[9], object.id);
  writer.writeStringList(offsets[10], object.images);
  writer.writeString(offsets[11], object.patient);
  writer.writeString(offsets[12], object.status);
  writer.writeString(offsets[13], object.takingMedication);
  writer.writeString(offsets[14], object.takingMedicationMessage);
  writer.writeString(offsets[15], object.temperature);
  writer.writeString(offsets[16], object.typeOfAllergies);
  writer.writeString(offsets[17], object.undergoSurgery);
  writer.writeString(offsets[18], object.weight);
}

ScreeningModel _screeningModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScreeningModel(
    assignment: reader.readString(offsets[0]),
    chiefComplaint: reader.readString(offsets[1]),
    chiefComplaintMessage: reader.readString(offsets[2]),
    createdAt: reader.readString(offsets[3]),
    hasAllergies: reader.readString(offsets[4]),
    hasSimilarCondition: reader.readString(offsets[5]),
    healthWorkerRemarks: reader.readString(offsets[6]),
    height: reader.readString(offsets[7]),
    historyOfIllness: reader.readString(offsets[8]),
    id: reader.readString(offsets[9]),
    images: reader.readStringList(offsets[10]) ?? [],
    patient: reader.readString(offsets[11]),
    status: reader.readString(offsets[12]),
    takingMedication: reader.readString(offsets[13]),
    takingMedicationMessage: reader.readString(offsets[14]),
    temperature: reader.readString(offsets[15]),
    typeOfAllergies: reader.readString(offsets[16]),
    undergoSurgery: reader.readString(offsets[17]),
    weight: reader.readString(offsets[18]),
  );
  object.isar = id;
  return object;
}

P _screeningModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringList(offset) ?? []) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _screeningModelGetId(ScreeningModel object) {
  return object.isar;
}

List<IsarLinkBase<dynamic>> _screeningModelGetLinks(ScreeningModel object) {
  return [];
}

void _screeningModelAttach(
    IsarCollection<dynamic> col, Id id, ScreeningModel object) {
  object.isar = id;
}

extension ScreeningModelQueryWhereSort
    on QueryBuilder<ScreeningModel, ScreeningModel, QWhere> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhere> anyIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScreeningModelQueryWhere
    on QueryBuilder<ScreeningModel, ScreeningModel, QWhereClause> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> isarEqualTo(
      Id isar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar,
        upper: isar,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause>
      isarNotEqualTo(Id isar) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isar, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isar, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isar, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isar, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause>
      isarGreaterThan(Id isar, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar, includeLower: include),
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> isarLessThan(
      Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar, includeUpper: include),
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> isarBetween(
    Id lowerIsar,
    Id upperIsar, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsar,
        includeLower: includeLower,
        upper: upperIsar,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ScreeningModelQueryFilter
    on QueryBuilder<ScreeningModel, ScreeningModel, QFilterCondition> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assignment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assignment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assignment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assignment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignment',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      assignmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assignment',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chiefComplaint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chiefComplaint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chiefComplaint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chiefComplaint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chiefComplaint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chiefComplaint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chiefComplaint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chiefComplaint',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chiefComplaint',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chiefComplaint',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chiefComplaintMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chiefComplaintMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chiefComplaintMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chiefComplaintMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chiefComplaintMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chiefComplaintMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chiefComplaintMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chiefComplaintMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chiefComplaintMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplaintMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chiefComplaintMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hasAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hasAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hasAllergies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hasAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hasAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hasAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hasAllergies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasAllergies',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasAllergiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hasAllergies',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasSimilarCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hasSimilarCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hasSimilarCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hasSimilarCondition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hasSimilarCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hasSimilarCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hasSimilarCondition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hasSimilarCondition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasSimilarCondition',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      hasSimilarConditionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hasSimilarCondition',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'healthWorkerRemarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'healthWorkerRemarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'healthWorkerRemarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'healthWorkerRemarks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'healthWorkerRemarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'healthWorkerRemarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'healthWorkerRemarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'healthWorkerRemarks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'healthWorkerRemarks',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerRemarksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'healthWorkerRemarks',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'height',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'height',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      heightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'height',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'historyOfIllness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'historyOfIllness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'historyOfIllness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'historyOfIllness',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'historyOfIllness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'historyOfIllness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'historyOfIllness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'historyOfIllness',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'historyOfIllness',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      historyOfIllnessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'historyOfIllness',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'images',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'images',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      imagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      isarEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      isarGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isar',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      isarLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isar',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      isarBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patient',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patient',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patient',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patient',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'takingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'takingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'takingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'takingMedication',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'takingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'takingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'takingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'takingMedication',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'takingMedication',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'takingMedication',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'takingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'takingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'takingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'takingMedicationMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'takingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'takingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'takingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'takingMedicationMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'takingMedicationMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      takingMedicationMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'takingMedicationMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'temperature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'temperature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'temperature',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'temperature',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      temperatureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'temperature',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeOfAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeOfAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeOfAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeOfAllergies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeOfAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeOfAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeOfAllergies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeOfAllergies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeOfAllergies',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      typeOfAllergiesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeOfAllergies',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'undergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'undergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'undergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'undergoSurgery',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'undergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'undergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'undergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'undergoSurgery',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'undergoSurgery',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      undergoSurgeryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'undergoSurgery',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      weightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weight',
        value: '',
      ));
    });
  }
}

extension ScreeningModelQueryObject
    on QueryBuilder<ScreeningModel, ScreeningModel, QFilterCondition> {}

extension ScreeningModelQueryLinks
    on QueryBuilder<ScreeningModel, ScreeningModel, QFilterCondition> {}

extension ScreeningModelQuerySortBy
    on QueryBuilder<ScreeningModel, ScreeningModel, QSortBy> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByAssignment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignment', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByAssignmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignment', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByChiefComplaint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaint', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByChiefComplaintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaint', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByChiefComplaintMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaintMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByChiefComplaintMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaintMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHasAllergies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasAllergies', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHasAllergiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasAllergies', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHasSimilarCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasSimilarCondition', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHasSimilarConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasSimilarCondition', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHealthWorkerRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerRemarks', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHealthWorkerRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerRemarks', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHistoryOfIllness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyOfIllness', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHistoryOfIllnessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyOfIllness', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByPatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTakingMedication() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedication', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTakingMedicationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedication', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTakingMedicationMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedicationMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTakingMedicationMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedicationMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTypeOfAllergies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfAllergies', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByTypeOfAllergiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfAllergies', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByUndergoSurgery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undergoSurgery', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByUndergoSurgeryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undergoSurgery', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension ScreeningModelQuerySortThenBy
    on QueryBuilder<ScreeningModel, ScreeningModel, QSortThenBy> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByAssignment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignment', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByAssignmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignment', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByChiefComplaint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaint', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByChiefComplaintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaint', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByChiefComplaintMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaintMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByChiefComplaintMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplaintMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHasAllergies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasAllergies', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHasAllergiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasAllergies', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHasSimilarCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasSimilarCondition', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHasSimilarConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasSimilarCondition', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHealthWorkerRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerRemarks', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHealthWorkerRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerRemarks', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHistoryOfIllness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyOfIllness', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHistoryOfIllnessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'historyOfIllness', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByPatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTakingMedication() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedication', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTakingMedicationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedication', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTakingMedicationMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedicationMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTakingMedicationMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'takingMedicationMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTypeOfAllergies() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfAllergies', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByTypeOfAllergiesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfAllergies', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByUndergoSurgery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undergoSurgery', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByUndergoSurgeryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'undergoSurgery', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension ScreeningModelQueryWhereDistinct
    on QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> {
  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByAssignment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assignment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByChiefComplaint({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chiefComplaint',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByChiefComplaintMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chiefComplaintMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByCreatedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByHasAllergies({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasAllergies', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByHasSimilarCondition({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasSimilarCondition',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByHealthWorkerRemarks({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'healthWorkerRemarks',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByHeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'height', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByHistoryOfIllness({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'historyOfIllness',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'images');
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByPatient(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patient', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByTakingMedication({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'takingMedication',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByTakingMedicationMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'takingMedicationMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByTemperature(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByTypeOfAllergies({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeOfAllergies',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByUndergoSurgery({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'undergoSurgery',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByWeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight', caseSensitive: caseSensitive);
    });
  }
}

extension ScreeningModelQueryProperty
    on QueryBuilder<ScreeningModel, ScreeningModel, QQueryProperty> {
  QueryBuilder<ScreeningModel, int, QQueryOperations> isarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> assignmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assignment');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      chiefComplaintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chiefComplaint');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      chiefComplaintMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chiefComplaintMessage');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      hasAllergiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasAllergies');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      hasSimilarConditionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasSimilarCondition');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      healthWorkerRemarksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'healthWorkerRemarks');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      historyOfIllnessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'historyOfIllness');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ScreeningModel, List<String>, QQueryOperations>
      imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> patientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patient');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      takingMedicationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'takingMedication');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      takingMedicationMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'takingMedicationMessage');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> temperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      typeOfAllergiesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeOfAllergies');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      undergoSurgeryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'undergoSurgery');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}
