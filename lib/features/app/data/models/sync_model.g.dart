// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSyncModelCollection on Isar {
  IsarCollection<SyncModel> get syncModels => this.collection();
}

const SyncModelSchema = CollectionSchema(
  name: r'sync',
  id: 5087843069960744560,
  properties: {
    r'patient': PropertySchema(
      id: 0,
      name: r'patient',
      type: IsarType.string,
    ),
    r'screening': PropertySchema(
      id: 1,
      name: r'screening',
      type: IsarType.string,
    )
  },
  estimateSize: _syncModelEstimateSize,
  serialize: _syncModelSerialize,
  deserialize: _syncModelDeserialize,
  deserializeProp: _syncModelDeserializeProp,
  idName: r'isar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _syncModelGetId,
  getLinks: _syncModelGetLinks,
  attach: _syncModelAttach,
  version: '3.1.0+1',
);

int _syncModelEstimateSize(
  SyncModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.patient.length * 3;
  bytesCount += 3 + object.screening.length * 3;
  return bytesCount;
}

void _syncModelSerialize(
  SyncModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.patient);
  writer.writeString(offsets[1], object.screening);
}

SyncModel _syncModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SyncModel(
    patient: reader.readString(offsets[0]),
    screening: reader.readString(offsets[1]),
  );
  object.isar = id;
  return object;
}

P _syncModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _syncModelGetId(SyncModel object) {
  return object.isar;
}

List<IsarLinkBase<dynamic>> _syncModelGetLinks(SyncModel object) {
  return [];
}

void _syncModelAttach(IsarCollection<dynamic> col, Id id, SyncModel object) {
  object.isar = id;
}

extension SyncModelQueryWhereSort
    on QueryBuilder<SyncModel, SyncModel, QWhere> {
  QueryBuilder<SyncModel, SyncModel, QAfterWhere> anyIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SyncModelQueryWhere
    on QueryBuilder<SyncModel, SyncModel, QWhereClause> {
  QueryBuilder<SyncModel, SyncModel, QAfterWhereClause> isarEqualTo(Id isar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar,
        upper: isar,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterWhereClause> isarNotEqualTo(
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

  QueryBuilder<SyncModel, SyncModel, QAfterWhereClause> isarGreaterThan(Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar, includeLower: include),
      );
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterWhereClause> isarLessThan(Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar, includeUpper: include),
      );
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterWhereClause> isarBetween(
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

extension SyncModelQueryFilter
    on QueryBuilder<SyncModel, SyncModel, QFilterCondition> {
  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> isarEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar',
        value: value,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> isarGreaterThan(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> isarLessThan(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> isarBetween(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientEqualTo(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientGreaterThan(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientLessThan(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientBetween(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientStartsWith(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientEndsWith(
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

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'patient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'patient',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> patientIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'patient',
        value: '',
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition>
      patientIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'patient',
        value: '',
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition>
      screeningGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'screening',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screening',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition> screeningIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screening',
        value: '',
      ));
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterFilterCondition>
      screeningIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screening',
        value: '',
      ));
    });
  }
}

extension SyncModelQueryObject
    on QueryBuilder<SyncModel, SyncModel, QFilterCondition> {}

extension SyncModelQueryLinks
    on QueryBuilder<SyncModel, SyncModel, QFilterCondition> {}

extension SyncModelQuerySortBy on QueryBuilder<SyncModel, SyncModel, QSortBy> {
  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> sortByPatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.asc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> sortByPatientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.desc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> sortByScreening() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.asc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> sortByScreeningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.desc);
    });
  }
}

extension SyncModelQuerySortThenBy
    on QueryBuilder<SyncModel, SyncModel, QSortThenBy> {
  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> thenByIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.asc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> thenByIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.desc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> thenByPatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.asc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> thenByPatientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'patient', Sort.desc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> thenByScreening() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.asc);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QAfterSortBy> thenByScreeningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.desc);
    });
  }
}

extension SyncModelQueryWhereDistinct
    on QueryBuilder<SyncModel, SyncModel, QDistinct> {
  QueryBuilder<SyncModel, SyncModel, QDistinct> distinctByPatient(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'patient', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SyncModel, SyncModel, QDistinct> distinctByScreening(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screening', caseSensitive: caseSensitive);
    });
  }
}

extension SyncModelQueryProperty
    on QueryBuilder<SyncModel, SyncModel, QQueryProperty> {
  QueryBuilder<SyncModel, int, QQueryOperations> isarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar');
    });
  }

  QueryBuilder<SyncModel, String, QQueryOperations> patientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'patient');
    });
  }

  QueryBuilder<SyncModel, String, QQueryOperations> screeningProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screening');
    });
  }
}
