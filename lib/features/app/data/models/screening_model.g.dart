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
  name: r'screening_information',
  id: -1099003248320392428,
  properties: {
    r'bloodPressure': PropertySchema(
      id: 0,
      name: r'bloodPressure',
      type: IsarType.string,
    ),
    r'cheifComplain': PropertySchema(
      id: 1,
      name: r'cheifComplain',
      type: IsarType.string,
    ),
    r'chiefComplainMessage': PropertySchema(
      id: 2,
      name: r'chiefComplainMessage',
      type: IsarType.string,
    ),
    r'createdBy': PropertySchema(
      id: 3,
      name: r'createdBy',
      type: IsarType.string,
    ),
    r'filePath': PropertySchema(
      id: 4,
      name: r'filePath',
      type: IsarType.string,
    ),
    r'frameOfInterest': PropertySchema(
      id: 5,
      name: r'frameOfInterest',
      type: IsarType.string,
    ),
    r'hasAllergies': PropertySchema(
      id: 6,
      name: r'hasAllergies',
      type: IsarType.string,
    ),
    r'hasSimilarCondition': PropertySchema(
      id: 7,
      name: r'hasSimilarCondition',
      type: IsarType.string,
    ),
    r'healthWorkerComment': PropertySchema(
      id: 8,
      name: r'healthWorkerComment',
      type: IsarType.string,
    ),
    r'height': PropertySchema(
      id: 9,
      name: r'height',
      type: IsarType.string,
    ),
    r'historyOfIllness': PropertySchema(
      id: 10,
      name: r'historyOfIllness',
      type: IsarType.string,
    ),
    r'owner': PropertySchema(
      id: 11,
      name: r'owner',
      type: IsarType.string,
    ),
    r'patientTakingMedication': PropertySchema(
      id: 12,
      name: r'patientTakingMedication',
      type: IsarType.string,
    ),
    r'patientTakingMedicationMessage': PropertySchema(
      id: 13,
      name: r'patientTakingMedicationMessage',
      type: IsarType.string,
    ),
    r'patientUndergoSurgery': PropertySchema(
      id: 14,
      name: r'patientUndergoSurgery',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 15,
      name: r'status',
      type: IsarType.string,
    ),
    r'temperature': PropertySchema(
      id: 16,
      name: r'temperature',
      type: IsarType.string,
    ),
    r'uid': PropertySchema(
      id: 17,
      name: r'uid',
      type: IsarType.string,
    ),
    r'uploadedAt': PropertySchema(
      id: 18,
      name: r'uploadedAt',
      type: IsarType.dateTime,
    ),
    r'weight': PropertySchema(
      id: 19,
      name: r'weight',
      type: IsarType.string,
    )
  },
  estimateSize: _screeningModelEstimateSize,
  serialize: _screeningModelSerialize,
  deserialize: _screeningModelDeserialize,
  deserializeProp: _screeningModelDeserializeProp,
  idName: r'id',
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
  bytesCount += 3 + object.bloodPressure.length * 3;
  bytesCount += 3 + object.cheifComplain.length * 3;
  {
    final value = object.chiefComplainMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.createdBy.length * 3;
  bytesCount += 3 + object.filePath.length * 3;
  bytesCount += 3 + object.frameOfInterest.length * 3;
  bytesCount += 3 + object.hasAllergies.length * 3;
  bytesCount += 3 + object.hasSimilarCondition.length * 3;
  bytesCount += 3 + object.healthWorkerComment.length * 3;
  bytesCount += 3 + object.height.length * 3;
  bytesCount += 3 + object.historyOfIllness.length * 3;
  bytesCount += 3 + object.owner.length * 3;
  bytesCount += 3 + object.patientTakingMedication.length * 3;
  {
    final value = object.patientTakingMedicationMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.patientUndergoSurgery.length * 3;
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.temperature.length * 3;
  bytesCount += 3 + object.uid.length * 3;
  bytesCount += 3 + object.weight.length * 3;
  return bytesCount;
}

void _screeningModelSerialize(
  ScreeningModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bloodPressure);
  writer.writeString(offsets[1], object.cheifComplain);
  writer.writeString(offsets[2], object.chiefComplainMessage);
  writer.writeString(offsets[3], object.createdBy);
  writer.writeString(offsets[4], object.filePath);
  writer.writeString(offsets[5], object.frameOfInterest);
  writer.writeString(offsets[6], object.hasAllergies);
  writer.writeString(offsets[7], object.hasSimilarCondition);
  writer.writeString(offsets[8], object.healthWorkerComment);
  writer.writeString(offsets[9], object.height);
  writer.writeString(offsets[10], object.historyOfIllness);
  writer.writeString(offsets[11], object.owner);
  writer.writeString(offsets[12], object.patientTakingMedication);
  writer.writeString(offsets[13], object.patientTakingMedicationMessage);
  writer.writeString(offsets[14], object.patientUndergoSurgery);
  writer.writeString(offsets[15], object.status);
  writer.writeString(offsets[16], object.temperature);
  writer.writeString(offsets[17], object.uid);
  writer.writeDateTime(offsets[18], object.uploadedAt);
  writer.writeString(offsets[19], object.weight);
}

ScreeningModel _screeningModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ScreeningModel(
    bloodPressure: reader.readString(offsets[0]),
    cheifComplain: reader.readString(offsets[1]),
    chiefComplainMessage: reader.readStringOrNull(offsets[2]),
    createdBy: reader.readString(offsets[3]),
    filePath: reader.readString(offsets[4]),
    frameOfInterest: reader.readString(offsets[5]),
    hasAllergies: reader.readString(offsets[6]),
    hasSimilarCondition: reader.readString(offsets[7]),
    healthWorkerComment: reader.readString(offsets[8]),
    height: reader.readString(offsets[9]),
    historyOfIllness: reader.readString(offsets[10]),
    owner: reader.readString(offsets[11]),
    patientTakingMedication: reader.readString(offsets[12]),
    patientTakingMedicationMessage: reader.readStringOrNull(offsets[13]),
    patientUndergoSurgery: reader.readString(offsets[14]),
    status: reader.readString(offsets[15]),
    temperature: reader.readString(offsets[16]),
    uid: reader.readString(offsets[17]),
    weight: reader.readString(offsets[19]),
  );
  object.id = id;
  object.uploadedAt = reader.readDateTime(offsets[18]);
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
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readDateTime(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _screeningModelGetId(ScreeningModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _screeningModelGetLinks(ScreeningModel object) {
  return [];
}

void _screeningModelAttach(
    IsarCollection<dynamic> col, Id id, ScreeningModel object) {
  object.id = id;
}

extension ScreeningModelQueryWhereSort
    on QueryBuilder<ScreeningModel, ScreeningModel, QWhere> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ScreeningModelQueryWhere
    on QueryBuilder<ScreeningModel, ScreeningModel, QWhereClause> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ScreeningModelQueryFilter
    on QueryBuilder<ScreeningModel, ScreeningModel, QFilterCondition> {
  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bloodPressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bloodPressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bloodPressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bloodPressure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bloodPressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bloodPressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bloodPressure',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bloodPressure',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bloodPressure',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      bloodPressureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bloodPressure',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cheifComplain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cheifComplain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cheifComplain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cheifComplain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cheifComplain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cheifComplain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cheifComplain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cheifComplain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cheifComplain',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      cheifComplainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cheifComplain',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chiefComplainMessage',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chiefComplainMessage',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chiefComplainMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chiefComplainMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chiefComplainMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chiefComplainMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chiefComplainMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chiefComplainMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chiefComplainMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chiefComplainMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chiefComplainMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      chiefComplainMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chiefComplainMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      createdByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      filePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frameOfInterest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frameOfInterest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frameOfInterest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frameOfInterest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frameOfInterest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frameOfInterest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frameOfInterest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frameOfInterest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frameOfInterest',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      frameOfInterestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frameOfInterest',
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
      healthWorkerCommentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'healthWorkerComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'healthWorkerComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'healthWorkerComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'healthWorkerComment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'healthWorkerComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'healthWorkerComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'healthWorkerComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'healthWorkerComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'healthWorkerComment',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      healthWorkerCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'healthWorkerComment',
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
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'owner',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'owner',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'owner',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'owner',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'owner',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'owner',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'owner',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'owner',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'owner',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      ownerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'owner',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientTakingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patientTakingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patientTakingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patientTakingMedication',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patientTakingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patientTakingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patientTakingMedication',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patientTakingMedication',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientTakingMedication',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patientTakingMedication',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'patientTakingMedicationMessage',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'patientTakingMedicationMessage',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientTakingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patientTakingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patientTakingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patientTakingMedicationMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patientTakingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patientTakingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patientTakingMedicationMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patientTakingMedicationMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientTakingMedicationMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientTakingMedicationMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patientTakingMedicationMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientUndergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'patientUndergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'patientUndergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'patientUndergoSurgery',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'patientUndergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'patientUndergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patientUndergoSurgery',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patientUndergoSurgery',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patientUndergoSurgery',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      patientUndergoSurgeryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patientUndergoSurgery',
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
      uidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uploadedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uploadedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uploadedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uploadedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uploadedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uploadedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterFilterCondition>
      uploadedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uploadedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
      sortByBloodPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloodPressure', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByBloodPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloodPressure', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByCheifComplain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cheifComplain', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByCheifComplainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cheifComplain', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByChiefComplainMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplainMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByChiefComplainMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplainMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByFilePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByFilePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByFrameOfInterest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frameOfInterest', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByFrameOfInterestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frameOfInterest', Sort.desc);
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
      sortByHealthWorkerComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerComment', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByHealthWorkerCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerComment', Sort.desc);
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

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByOwner() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByOwnerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientTakingMedication() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedication', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientTakingMedicationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedication', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientTakingMedicationMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedicationMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientTakingMedicationMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedicationMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientUndergoSurgery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientUndergoSurgery', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByPatientUndergoSurgeryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientUndergoSurgery', Sort.desc);
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

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByUploadedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadedAt', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      sortByUploadedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadedAt', Sort.desc);
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
      thenByBloodPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloodPressure', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByBloodPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bloodPressure', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByCheifComplain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cheifComplain', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByCheifComplainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cheifComplain', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByChiefComplainMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplainMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByChiefComplainMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chiefComplainMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByCreatedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByCreatedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdBy', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByFilePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByFilePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByFrameOfInterest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frameOfInterest', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByFrameOfInterestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frameOfInterest', Sort.desc);
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
      thenByHealthWorkerComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerComment', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByHealthWorkerCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'healthWorkerComment', Sort.desc);
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

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByOwner() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByOwnerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientTakingMedication() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedication', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientTakingMedicationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedication', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientTakingMedicationMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedicationMessage', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientTakingMedicationMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientTakingMedicationMessage', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientUndergoSurgery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientUndergoSurgery', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByPatientUndergoSurgeryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patientUndergoSurgery', Sort.desc);
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

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByUploadedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadedAt', Sort.asc);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QAfterSortBy>
      thenByUploadedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploadedAt', Sort.desc);
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
  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByBloodPressure({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bloodPressure',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByCheifComplain({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cheifComplain',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByChiefComplainMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chiefComplainMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByCreatedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByFilePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByFrameOfInterest({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frameOfInterest',
          caseSensitive: caseSensitive);
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
      distinctByHealthWorkerComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'healthWorkerComment',
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

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByOwner(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'owner', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByPatientTakingMedication({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patientTakingMedication',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByPatientTakingMedicationMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patientTakingMedicationMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByPatientUndergoSurgery({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patientUndergoSurgery',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByTemperature(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ScreeningModel, ScreeningModel, QDistinct>
      distinctByUploadedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uploadedAt');
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
  QueryBuilder<ScreeningModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      bloodPressureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bloodPressure');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      cheifComplainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cheifComplain');
    });
  }

  QueryBuilder<ScreeningModel, String?, QQueryOperations>
      chiefComplainMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chiefComplainMessage');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> createdByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdBy');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> filePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filePath');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      frameOfInterestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frameOfInterest');
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
      healthWorkerCommentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'healthWorkerComment');
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

  QueryBuilder<ScreeningModel, String, QQueryOperations> ownerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'owner');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      patientTakingMedicationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patientTakingMedication');
    });
  }

  QueryBuilder<ScreeningModel, String?, QQueryOperations>
      patientTakingMedicationMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patientTakingMedicationMessage');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations>
      patientUndergoSurgeryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patientUndergoSurgery');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> temperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }

  QueryBuilder<ScreeningModel, DateTime, QQueryOperations>
      uploadedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uploadedAt');
    });
  }

  QueryBuilder<ScreeningModel, String, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}
