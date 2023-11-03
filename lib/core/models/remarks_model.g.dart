// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remarks_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRemarksModelCollection on Isar {
  IsarCollection<RemarksModel> get remarksModels => this.collection();
}

const RemarksModelSchema = CollectionSchema(
  name: r'remarks',
  id: -6946846383927629910,
  properties: {
    r'followUpDate': PropertySchema(
      id: 0,
      name: r'followUpDate',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'remarks': PropertySchema(
      id: 2,
      name: r'remarks',
      type: IsarType.string,
    ),
    r'screening': PropertySchema(
      id: 3,
      name: r'screening',
      type: IsarType.string,
    )
  },
  estimateSize: _remarksModelEstimateSize,
  serialize: _remarksModelSerialize,
  deserialize: _remarksModelDeserialize,
  deserializeProp: _remarksModelDeserializeProp,
  idName: r'isar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _remarksModelGetId,
  getLinks: _remarksModelGetLinks,
  attach: _remarksModelAttach,
  version: '3.1.0+1',
);

int _remarksModelEstimateSize(
  RemarksModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.followUpDate.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.remarks.length * 3;
  bytesCount += 3 + object.screening.length * 3;
  return bytesCount;
}

void _remarksModelSerialize(
  RemarksModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.followUpDate);
  writer.writeString(offsets[1], object.id);
  writer.writeString(offsets[2], object.remarks);
  writer.writeString(offsets[3], object.screening);
}

RemarksModel _remarksModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RemarksModel(
    followUpDate: reader.readString(offsets[0]),
    id: reader.readString(offsets[1]),
    remarks: reader.readString(offsets[2]),
    screening: reader.readString(offsets[3]),
  );
  object.isar = id;
  return object;
}

P _remarksModelDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _remarksModelGetId(RemarksModel object) {
  return object.isar;
}

List<IsarLinkBase<dynamic>> _remarksModelGetLinks(RemarksModel object) {
  return [];
}

void _remarksModelAttach(
    IsarCollection<dynamic> col, Id id, RemarksModel object) {
  object.isar = id;
}

extension RemarksModelQueryWhereSort
    on QueryBuilder<RemarksModel, RemarksModel, QWhere> {
  QueryBuilder<RemarksModel, RemarksModel, QAfterWhere> anyIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RemarksModelQueryWhere
    on QueryBuilder<RemarksModel, RemarksModel, QWhereClause> {
  QueryBuilder<RemarksModel, RemarksModel, QAfterWhereClause> isarEqualTo(
      Id isar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar,
        upper: isar,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterWhereClause> isarNotEqualTo(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterWhereClause> isarGreaterThan(
      Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar, includeLower: include),
      );
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterWhereClause> isarLessThan(
      Id isar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar, includeUpper: include),
      );
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterWhereClause> isarBetween(
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

extension RemarksModelQueryFilter
    on QueryBuilder<RemarksModel, RemarksModel, QFilterCondition> {
  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'followUpDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'followUpDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'followUpDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'followUpDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'followUpDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'followUpDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'followUpDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'followUpDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'followUpDate',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      followUpDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'followUpDate',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idContains(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idMatches(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> isarEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar',
        value: value,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> isarLessThan(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition> isarBetween(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remarks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'remarks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      remarksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningEqualTo(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningLessThan(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningBetween(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningStartsWith(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningEndsWith(
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

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screening',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screening',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screening',
        value: '',
      ));
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterFilterCondition>
      screeningIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screening',
        value: '',
      ));
    });
  }
}

extension RemarksModelQueryObject
    on QueryBuilder<RemarksModel, RemarksModel, QFilterCondition> {}

extension RemarksModelQueryLinks
    on QueryBuilder<RemarksModel, RemarksModel, QFilterCondition> {}

extension RemarksModelQuerySortBy
    on QueryBuilder<RemarksModel, RemarksModel, QSortBy> {
  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortByFollowUpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy>
      sortByFollowUpDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortByScreening() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> sortByScreeningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.desc);
    });
  }
}

extension RemarksModelQuerySortThenBy
    on QueryBuilder<RemarksModel, RemarksModel, QSortThenBy> {
  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByFollowUpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy>
      thenByFollowUpDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followUpDate', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByScreening() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.asc);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QAfterSortBy> thenByScreeningDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screening', Sort.desc);
    });
  }
}

extension RemarksModelQueryWhereDistinct
    on QueryBuilder<RemarksModel, RemarksModel, QDistinct> {
  QueryBuilder<RemarksModel, RemarksModel, QDistinct> distinctByFollowUpDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'followUpDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QDistinct> distinctByRemarks(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remarks', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RemarksModel, RemarksModel, QDistinct> distinctByScreening(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screening', caseSensitive: caseSensitive);
    });
  }
}

extension RemarksModelQueryProperty
    on QueryBuilder<RemarksModel, RemarksModel, QQueryProperty> {
  QueryBuilder<RemarksModel, int, QQueryOperations> isarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar');
    });
  }

  QueryBuilder<RemarksModel, String, QQueryOperations> followUpDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'followUpDate');
    });
  }

  QueryBuilder<RemarksModel, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RemarksModel, String, QQueryOperations> remarksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remarks');
    });
  }

  QueryBuilder<RemarksModel, String, QQueryOperations> screeningProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screening');
    });
  }
}
