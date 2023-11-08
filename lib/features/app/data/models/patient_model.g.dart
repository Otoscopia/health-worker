// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPatientModelCollection on Isar {
  IsarCollection<PatientModel> get patientModels => this.collection();
}

const PatientModelSchema = CollectionSchema(
  name: r'patients',
  id: -2208022937579370144,
  properties: {
    r'birthdate': PropertySchema(
      id: 0,
      name: r'birthdate',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.string,
    ),
    r'creator': PropertySchema(
      id: 2,
      name: r'creator',
      type: IsarType.string,
    ),
    r'doctor': PropertySchema(
      id: 3,
      name: r'doctor',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 4,
      name: r'gender',
      type: IsarType.string,
    ),
    r'guardiansName': PropertySchema(
      id: 5,
      name: r'guardiansName',
      type: IsarType.string,
    ),
    r'guardiansPhone': PropertySchema(
      id: 6,
      name: r'guardiansPhone',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 7,
      name: r'id',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'school': PropertySchema(
      id: 9,
      name: r'school',
      type: IsarType.string,
    ),
    r'schoolID': PropertySchema(
      id: 10,
      name: r'schoolID',
      type: IsarType.string,
    )
  },
  estimateSize: _patientModelEstimateSize,
  serialize: _patientModelSerialize,
  deserialize: _patientModelDeserialize,
  deserializeProp: _patientModelDeserializeProp,
  idName: r'isar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _patientModelGetId,
  getLinks: _patientModelGetLinks,
  attach: _patientModelAttach,
  version: '3.1.0+1',
);

int _patientModelEstimateSize(
  PatientModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.birthdate.length * 3;
  bytesCount += 3 + object.createdAt.length * 3;
  bytesCount += 3 + object.creator.length * 3;
  bytesCount += 3 + object.doctor.length * 3;
  bytesCount += 3 + object.gender.length * 3;
  bytesCount += 3 + object.guardiansName.length * 3;
  bytesCount += 3 + object.guardiansPhone.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.school.length * 3;
  bytesCount += 3 + object.schoolID.length * 3;
  return bytesCount;
}

void _patientModelSerialize(
  PatientModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.birthdate);
  writer.writeString(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.creator);
  writer.writeString(offsets[3], object.doctor);
  writer.writeString(offsets[4], object.gender);
  writer.writeString(offsets[5], object.guardiansName);
  writer.writeString(offsets[6], object.guardiansPhone);
  writer.writeString(offsets[7], object.id);
  writer.writeString(offsets[8], object.name);
  writer.writeString(offsets[9], object.school);
  writer.writeString(offsets[10], object.schoolID);
}

PatientModel _patientModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PatientModel(
    birthdate: reader.readString(offsets[0]),
    createdAt: reader.readString(offsets[1]),
    creator: reader.readString(offsets[2]),
    doctor: reader.readString(offsets[3]),
    gender: reader.readString(offsets[4]),
    guardiansName: reader.readString(offsets[5]),
    guardiansPhone: reader.readString(offsets[6]),
    id: reader.readString(offsets[7]),
    name: reader.readString(offsets[8]),
    school: reader.readString(offsets[9]),
    schoolID: reader.readString(offsets[10]),
  );
  object.isar = id;
  return object;
}

P _patientModelDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _patientModelGetId(PatientModel object) {
  return object.isar;
}

List<IsarLinkBase<dynamic>> _patientModelGetLinks(PatientModel object) {
  return [];
}

void _patientModelAttach(
    IsarCollection<dynamic> col, Id id, PatientModel object) {
  object.isar = id;
}

extension PatientModelQueryWhereSort
    on QueryBuilder<PatientModel, PatientModel, QWhere> {
  QueryBuilder<PatientModel, PatientModel, QAfterWhere> anyIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PatientModelQueryWhere
    on QueryBuilder<PatientModel, PatientModel, QWhereClause> {
  QueryBuilder<PatientModel, PatientModel, QAfterWhereClause> isarEqualTo(
      Id isar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar,
        upper: isar,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterWhereClause> isarNotEqualTo(
      Id isar) {
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

  QueryBuilder<PatientModel, PatientModel, QAfterWhereClause> isarGreaterThan(
      Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar, includeLower: include),
      );
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterWhereClause> isarLessThan(
      Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar, includeUpper: include),
      );
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterWhereClause> isarBetween(
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

extension PatientModelQueryFilter
    on QueryBuilder<PatientModel, PatientModel, QFilterCondition> {
  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthdate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'birthdate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'birthdate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthdate',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      birthdateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'birthdate',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      createdAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      createdAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      createdAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      createdAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdAt',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creator',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'creator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'creator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'creator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'creator',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creator',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      creatorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'creator',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> doctorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doctor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doctor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doctor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> doctorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doctor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doctor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doctor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doctor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> doctorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doctor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doctor',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      doctorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doctor',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> genderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> genderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> genderMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guardiansName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guardiansName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guardiansName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guardiansName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'guardiansName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'guardiansName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'guardiansName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'guardiansName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guardiansName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'guardiansName',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guardiansPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guardiansPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guardiansPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guardiansPhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'guardiansPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'guardiansPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'guardiansPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'guardiansPhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guardiansPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      guardiansPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'guardiansPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idMatches(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> isarEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar',
        value: value,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> isarLessThan(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> isarBetween(
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

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> schoolEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'school',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'school',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'school',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> schoolBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'school',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'school',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'school',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'school',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition> schoolMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'school',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'school',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'school',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schoolID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schoolID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schoolID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'schoolID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'schoolID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'schoolID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'schoolID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schoolID',
        value: '',
      ));
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterFilterCondition>
      schoolIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'schoolID',
        value: '',
      ));
    });
  }
}

extension PatientModelQueryObject
    on QueryBuilder<PatientModel, PatientModel, QFilterCondition> {}

extension PatientModelQueryLinks
    on QueryBuilder<PatientModel, PatientModel, QFilterCondition> {}

extension PatientModelQuerySortBy
    on QueryBuilder<PatientModel, PatientModel, QSortBy> {
  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByBirthdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByCreator() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creator', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByCreatorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creator', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByDoctor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctor', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByDoctorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctor', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByGuardiansName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansName', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy>
      sortByGuardiansNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansName', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy>
      sortByGuardiansPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansPhone', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy>
      sortByGuardiansPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansPhone', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortBySchool() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'school', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortBySchoolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'school', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortBySchoolID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolID', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> sortBySchoolIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolID', Sort.desc);
    });
  }
}

extension PatientModelQuerySortThenBy
    on QueryBuilder<PatientModel, PatientModel, QSortThenBy> {
  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByBirthdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByCreator() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creator', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByCreatorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creator', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByDoctor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctor', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByDoctorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doctor', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByGuardiansName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansName', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy>
      thenByGuardiansNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansName', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy>
      thenByGuardiansPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansPhone', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy>
      thenByGuardiansPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guardiansPhone', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenBySchool() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'school', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenBySchoolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'school', Sort.desc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenBySchoolID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolID', Sort.asc);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QAfterSortBy> thenBySchoolIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'schoolID', Sort.desc);
    });
  }
}

extension PatientModelQueryWhereDistinct
    on QueryBuilder<PatientModel, PatientModel, QDistinct> {
  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByBirthdate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthdate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByCreatedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByCreator(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creator', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByDoctor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doctor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByGuardiansName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guardiansName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByGuardiansPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guardiansPhone',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctBySchool(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'school', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PatientModel, PatientModel, QDistinct> distinctBySchoolID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'schoolID', caseSensitive: caseSensitive);
    });
  }
}

extension PatientModelQueryProperty
    on QueryBuilder<PatientModel, PatientModel, QQueryProperty> {
  QueryBuilder<PatientModel, int, QQueryOperations> isarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> birthdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthdate');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> creatorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creator');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> doctorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doctor');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> guardiansNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guardiansName');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations>
      guardiansPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guardiansPhone');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> schoolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'school');
    });
  }

  QueryBuilder<PatientModel, String, QQueryOperations> schoolIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schoolID');
    });
  }
}
