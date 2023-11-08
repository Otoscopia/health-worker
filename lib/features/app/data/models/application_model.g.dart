// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetApplicationModelCollection on Isar {
  IsarCollection<ApplicationModel> get applicationModels => this.collection();
}

const ApplicationModelSchema = CollectionSchema(
  name: r'application',
  id: -1098801520816516040,
  properties: {
    r'accentColor': PropertySchema(
      id: 0,
      name: r'accentColor',
      type: IsarType.string,
    ),
    r'language': PropertySchema(
      id: 1,
      name: r'language',
      type: IsarType.byte,
      enumMap: _ApplicationModellanguageEnumValueMap,
    ),
    r'theme': PropertySchema(
      id: 2,
      name: r'theme',
      type: IsarType.byte,
      enumMap: _ApplicationModelthemeEnumValueMap,
    )
  },
  estimateSize: _applicationModelEstimateSize,
  serialize: _applicationModelSerialize,
  deserialize: _applicationModelDeserialize,
  deserializeProp: _applicationModelDeserializeProp,
  idName: r'ids',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _applicationModelGetId,
  getLinks: _applicationModelGetLinks,
  attach: _applicationModelAttach,
  version: '3.1.0+1',
);

int _applicationModelEstimateSize(
  ApplicationModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.accentColor.length * 3;
  return bytesCount;
}

void _applicationModelSerialize(
  ApplicationModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accentColor);
  writer.writeByte(offsets[1], object.language.index);
  writer.writeByte(offsets[2], object.theme.index);
}

ApplicationModel _applicationModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ApplicationModel(
    accentColor: reader.readString(offsets[0]),
    language: _ApplicationModellanguageValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        Language.en,
    theme:
        _ApplicationModelthemeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
            Theme.light,
  );
  object.ids = id;
  return object;
}

P _applicationModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (_ApplicationModellanguageValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Language.en) as P;
    case 2:
      return (_ApplicationModelthemeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Theme.light) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ApplicationModellanguageEnumValueMap = {
  'en': 0,
  'tl': 1,
};
const _ApplicationModellanguageValueEnumMap = {
  0: Language.en,
  1: Language.tl,
};
const _ApplicationModelthemeEnumValueMap = {
  'light': 0,
  'dark': 1,
  'system': 2,
};
const _ApplicationModelthemeValueEnumMap = {
  0: Theme.light,
  1: Theme.dark,
  2: Theme.system,
};

Id _applicationModelGetId(ApplicationModel object) {
  return object.ids;
}

List<IsarLinkBase<dynamic>> _applicationModelGetLinks(ApplicationModel object) {
  return [];
}

void _applicationModelAttach(
    IsarCollection<dynamic> col, Id id, ApplicationModel object) {
  object.ids = id;
}

extension ApplicationModelQueryWhereSort
    on QueryBuilder<ApplicationModel, ApplicationModel, QWhere> {
  QueryBuilder<ApplicationModel, ApplicationModel, QAfterWhere> anyIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ApplicationModelQueryWhere
    on QueryBuilder<ApplicationModel, ApplicationModel, QWhereClause> {
  QueryBuilder<ApplicationModel, ApplicationModel, QAfterWhereClause>
      idsEqualTo(Id ids) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: ids,
        upper: ids,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterWhereClause>
      idsNotEqualTo(Id ids) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: ids, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: ids, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: ids, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: ids, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterWhereClause>
      idsGreaterThan(Id ids, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: ids, includeLower: include),
      );
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterWhereClause>
      idsLessThan(Id ids, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: ids, includeUpper: include),
      );
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterWhereClause>
      idsBetween(
    Id lowerIds,
    Id upperIds, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIds,
        includeLower: includeLower,
        upper: upperIds,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ApplicationModelQueryFilter
    on QueryBuilder<ApplicationModel, ApplicationModel, QFilterCondition> {
  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accentColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accentColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accentColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accentColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accentColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accentColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accentColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accentColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accentColor',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      accentColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accentColor',
        value: '',
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      idsEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ids',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      idsGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ids',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      idsLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ids',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      idsBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ids',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      languageEqualTo(Language value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      languageGreaterThan(
    Language value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      languageLessThan(
    Language value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      languageBetween(
    Language lower,
    Language upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      themeEqualTo(Theme value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      themeGreaterThan(
    Theme value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      themeLessThan(
    Theme value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterFilterCondition>
      themeBetween(
    Theme lower,
    Theme upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'theme',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ApplicationModelQueryObject
    on QueryBuilder<ApplicationModel, ApplicationModel, QFilterCondition> {}

extension ApplicationModelQueryLinks
    on QueryBuilder<ApplicationModel, ApplicationModel, QFilterCondition> {}

extension ApplicationModelQuerySortBy
    on QueryBuilder<ApplicationModel, ApplicationModel, QSortBy> {
  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      sortByAccentColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accentColor', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      sortByAccentColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accentColor', Sort.desc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy> sortByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      sortByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }
}

extension ApplicationModelQuerySortThenBy
    on QueryBuilder<ApplicationModel, ApplicationModel, QSortThenBy> {
  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      thenByAccentColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accentColor', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      thenByAccentColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accentColor', Sort.desc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy> thenByIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ids', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      thenByIdsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ids', Sort.desc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy> thenByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QAfterSortBy>
      thenByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }
}

extension ApplicationModelQueryWhereDistinct
    on QueryBuilder<ApplicationModel, ApplicationModel, QDistinct> {
  QueryBuilder<ApplicationModel, ApplicationModel, QDistinct>
      distinctByAccentColor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accentColor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QDistinct>
      distinctByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language');
    });
  }

  QueryBuilder<ApplicationModel, ApplicationModel, QDistinct>
      distinctByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'theme');
    });
  }
}

extension ApplicationModelQueryProperty
    on QueryBuilder<ApplicationModel, ApplicationModel, QQueryProperty> {
  QueryBuilder<ApplicationModel, int, QQueryOperations> idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ids');
    });
  }

  QueryBuilder<ApplicationModel, String, QQueryOperations>
      accentColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accentColor');
    });
  }

  QueryBuilder<ApplicationModel, Language, QQueryOperations>
      languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<ApplicationModel, Theme, QQueryOperations> themeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'theme');
    });
  }
}
