// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_detail_schema.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizDetailSchemaCollection on Isar {
  IsarCollection<QuizDetailSchema> get quizDetailSchemas => this.collection();
}

const QuizDetailSchemaSchema = CollectionSchema(
  name: r'QuizDetailSchema',
  id: -180105670684922644,
  properties: {
    r'hashQuizId': PropertySchema(
      id: 0,
      name: r'hashQuizId',
      type: IsarType.long,
    ),
    r'quizId': PropertySchema(
      id: 1,
      name: r'quizId',
      type: IsarType.string,
    ),
    r'stageId': PropertySchema(
      id: 2,
      name: r'stageId',
      type: IsarType.string,
    )
  },
  estimateSize: _quizDetailSchemaEstimateSize,
  serialize: _quizDetailSchemaSerialize,
  deserialize: _quizDetailSchemaDeserialize,
  deserializeProp: _quizDetailSchemaDeserializeProp,
  idName: r'hashRankId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _quizDetailSchemaGetId,
  getLinks: _quizDetailSchemaGetLinks,
  attach: _quizDetailSchemaAttach,
  version: '3.1.0+1',
);

int _quizDetailSchemaEstimateSize(
  QuizDetailSchema object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.quizId.length * 3;
  bytesCount += 3 + object.stageId.length * 3;
  return bytesCount;
}

void _quizDetailSchemaSerialize(
  QuizDetailSchema object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashQuizId);
  writer.writeString(offsets[1], object.quizId);
  writer.writeString(offsets[2], object.stageId);
}

QuizDetailSchema _quizDetailSchemaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizDetailSchema();
  object.quizId = reader.readString(offsets[1]);
  object.stageId = reader.readString(offsets[2]);
  return object;
}

P _quizDetailSchemaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizDetailSchemaGetId(QuizDetailSchema object) {
  return object.hashRankId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _quizDetailSchemaGetLinks(QuizDetailSchema object) {
  return [];
}

void _quizDetailSchemaAttach(
    IsarCollection<dynamic> col, Id id, QuizDetailSchema object) {}

extension QuizDetailSchemaQueryWhereSort
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QWhere> {
  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterWhere>
      anyHashRankId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizDetailSchemaQueryWhere
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QWhereClause> {
  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterWhereClause>
      hashRankIdEqualTo(Id hashRankId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: hashRankId,
        upper: hashRankId,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterWhereClause>
      hashRankIdNotEqualTo(Id hashRankId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: hashRankId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: hashRankId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: hashRankId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: hashRankId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterWhereClause>
      hashRankIdGreaterThan(Id hashRankId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: hashRankId, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterWhereClause>
      hashRankIdLessThan(Id hashRankId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: hashRankId, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterWhereClause>
      hashRankIdBetween(
    Id lowerHashRankId,
    Id upperHashRankId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerHashRankId,
        includeLower: includeLower,
        upper: upperHashRankId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension QuizDetailSchemaQueryFilter
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QFilterCondition> {
  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashQuizIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashQuizId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashQuizIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashQuizId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashQuizIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashQuizId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashQuizIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashQuizId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashRankIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashRankId',
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashRankIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashRankId',
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashRankIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashRankId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashRankIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashRankId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashRankIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashRankId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      hashRankIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashRankId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quizId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quizId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      quizIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quizId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stageId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stageId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stageId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterFilterCondition>
      stageIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stageId',
        value: '',
      ));
    });
  }
}

extension QuizDetailSchemaQueryObject
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QFilterCondition> {}

extension QuizDetailSchemaQueryLinks
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QFilterCondition> {}

extension QuizDetailSchemaQuerySortBy
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QSortBy> {
  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      sortByHashQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashQuizId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      sortByHashQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashQuizId', Sort.desc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      sortByQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      sortByQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.desc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      sortByStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      sortByStageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.desc);
    });
  }
}

extension QuizDetailSchemaQuerySortThenBy
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QSortThenBy> {
  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByHashQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashQuizId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByHashQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashQuizId', Sort.desc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByHashRankId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByHashRankIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankId', Sort.desc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByQuizIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizId', Sort.desc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.asc);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QAfterSortBy>
      thenByStageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.desc);
    });
  }
}

extension QuizDetailSchemaQueryWhereDistinct
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QDistinct> {
  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QDistinct>
      distinctByHashQuizId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashQuizId');
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QDistinct> distinctByQuizId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quizId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizDetailSchema, QuizDetailSchema, QDistinct> distinctByStageId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stageId', caseSensitive: caseSensitive);
    });
  }
}

extension QuizDetailSchemaQueryProperty
    on QueryBuilder<QuizDetailSchema, QuizDetailSchema, QQueryProperty> {
  QueryBuilder<QuizDetailSchema, int, QQueryOperations> hashRankIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashRankId');
    });
  }

  QueryBuilder<QuizDetailSchema, int, QQueryOperations> hashQuizIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashQuizId');
    });
  }

  QueryBuilder<QuizDetailSchema, String, QQueryOperations> quizIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizId');
    });
  }

  QueryBuilder<QuizDetailSchema, String, QQueryOperations> stageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stageId');
    });
  }
}
