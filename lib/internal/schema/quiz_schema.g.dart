// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_schema.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuizSchemaCollection on Isar {
  IsarCollection<QuizSchema> get quizSchemas => this.collection();
}

const QuizSchemaSchema = CollectionSchema(
  name: r'QuizSchema',
  id: -8602603329903673249,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'hashRankName': PropertySchema(
      id: 1,
      name: r'hashRankName',
      type: IsarType.long,
    ),
    r'hashStageId': PropertySchema(
      id: 2,
      name: r'hashStageId',
      type: IsarType.long,
    ),
    r'hashStageName': PropertySchema(
      id: 3,
      name: r'hashStageName',
      type: IsarType.long,
    ),
    r'rankId': PropertySchema(
      id: 4,
      name: r'rankId',
      type: IsarType.string,
    ),
    r'rankName': PropertySchema(
      id: 5,
      name: r'rankName',
      type: IsarType.string,
    ),
    r'stageId': PropertySchema(
      id: 6,
      name: r'stageId',
      type: IsarType.string,
    ),
    r'stageName': PropertySchema(
      id: 7,
      name: r'stageName',
      type: IsarType.string,
    )
  },
  estimateSize: _quizSchemaEstimateSize,
  serialize: _quizSchemaSerialize,
  deserialize: _quizSchemaDeserialize,
  deserializeProp: _quizSchemaDeserializeProp,
  idName: r'hashRankId',
  indexes: {},
  links: {
    r'details': LinkSchema(
      id: 7986459496553659403,
      name: r'details',
      target: r'QuizDetailSchema',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _quizSchemaGetId,
  getLinks: _quizSchemaGetLinks,
  attach: _quizSchemaAttach,
  version: '3.1.0+1',
);

int _quizSchemaEstimateSize(
  QuizSchema object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.rankId.length * 3;
  bytesCount += 3 + object.rankName.length * 3;
  bytesCount += 3 + object.stageId.length * 3;
  bytesCount += 3 + object.stageName.length * 3;
  return bytesCount;
}

void _quizSchemaSerialize(
  QuizSchema object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLong(offsets[1], object.hashRankName);
  writer.writeLong(offsets[2], object.hashStageId);
  writer.writeLong(offsets[3], object.hashStageName);
  writer.writeString(offsets[4], object.rankId);
  writer.writeString(offsets[5], object.rankName);
  writer.writeString(offsets[6], object.stageId);
  writer.writeString(offsets[7], object.stageName);
}

QuizSchema _quizSchemaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizSchema();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.rankId = reader.readString(offsets[4]);
  object.rankName = reader.readString(offsets[5]);
  object.stageId = reader.readString(offsets[6]);
  object.stageName = reader.readString(offsets[7]);
  return object;
}

P _quizSchemaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quizSchemaGetId(QuizSchema object) {
  return object.hashRankId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _quizSchemaGetLinks(QuizSchema object) {
  return [object.details];
}

void _quizSchemaAttach(IsarCollection<dynamic> col, Id id, QuizSchema object) {
  object.details
      .attach(col, col.isar.collection<QuizDetailSchema>(), r'details', id);
}

extension QuizSchemaQueryWhereSort
    on QueryBuilder<QuizSchema, QuizSchema, QWhere> {
  QueryBuilder<QuizSchema, QuizSchema, QAfterWhere> anyHashRankId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuizSchemaQueryWhere
    on QueryBuilder<QuizSchema, QuizSchema, QWhereClause> {
  QueryBuilder<QuizSchema, QuizSchema, QAfterWhereClause> hashRankIdEqualTo(
      Id hashRankId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: hashRankId,
        upper: hashRankId,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterWhereClause> hashRankIdNotEqualTo(
      Id hashRankId) {
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterWhereClause> hashRankIdGreaterThan(
      Id hashRankId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: hashRankId, includeLower: include),
      );
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterWhereClause> hashRankIdLessThan(
      Id hashRankId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: hashRankId, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterWhereClause> hashRankIdBetween(
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

extension QuizSchemaQueryFilter
    on QueryBuilder<QuizSchema, QuizSchema, QFilterCondition> {
  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashRankIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hashRankId',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashRankIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hashRankId',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> hashRankIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashRankId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> hashRankIdBetween(
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashRankNameEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashRankName',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashRankNameGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashRankName',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashRankNameLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashRankName',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashRankNameBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashRankName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashStageId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashStageId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashStageId',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashStageId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageNameEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashStageName',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageNameGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashStageName',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageNameLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashStageName',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      hashStageNameBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashStageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rankId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rankId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rankId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      rankIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rankId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      rankNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rankName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      rankNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rankName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> rankNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rankName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      rankNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rankName',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      rankNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rankName',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdEqualTo(
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdLessThan(
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdBetween(
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdStartsWith(
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdEndsWith(
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

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stageId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stageId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      stageIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stageId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      stageNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      stageNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> stageNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stageName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      stageNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stageName',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      stageNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stageName',
        value: '',
      ));
    });
  }
}

extension QuizSchemaQueryObject
    on QueryBuilder<QuizSchema, QuizSchema, QFilterCondition> {}

extension QuizSchemaQueryLinks
    on QueryBuilder<QuizSchema, QuizSchema, QFilterCondition> {
  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> details(
      FilterQuery<QuizDetailSchema> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'details');
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      detailsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'details', length, true, length, true);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition> detailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'details', 0, true, 0, true);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      detailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'details', 0, false, 999999, true);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      detailsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'details', 0, true, length, include);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      detailsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'details', length, include, 999999, true);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterFilterCondition>
      detailsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'details', lower, includeLower, upper, includeUpper);
    });
  }
}

extension QuizSchemaQuerySortBy
    on QueryBuilder<QuizSchema, QuizSchema, QSortBy> {
  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByHashRankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByHashRankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankName', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByHashStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByHashStageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByHashStageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByHashStageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageName', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByRankId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByRankIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByRankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByRankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankName', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByStageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByStageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> sortByStageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageName', Sort.desc);
    });
  }
}

extension QuizSchemaQuerySortThenBy
    on QueryBuilder<QuizSchema, QuizSchema, QSortThenBy> {
  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashRankId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashRankIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashRankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashRankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashRankName', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashStageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashStageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByHashStageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashStageName', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByRankId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByRankIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByRankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByRankNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rankName', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByStageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageId', Sort.desc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByStageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageName', Sort.asc);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QAfterSortBy> thenByStageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stageName', Sort.desc);
    });
  }
}

extension QuizSchemaQueryWhereDistinct
    on QueryBuilder<QuizSchema, QuizSchema, QDistinct> {
  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByHashRankName() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashRankName');
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByHashStageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashStageId');
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByHashStageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashStageName');
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByRankId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rankId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByRankName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rankName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByStageId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stageId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuizSchema, QuizSchema, QDistinct> distinctByStageName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stageName', caseSensitive: caseSensitive);
    });
  }
}

extension QuizSchemaQueryProperty
    on QueryBuilder<QuizSchema, QuizSchema, QQueryProperty> {
  QueryBuilder<QuizSchema, int, QQueryOperations> hashRankIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashRankId');
    });
  }

  QueryBuilder<QuizSchema, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<QuizSchema, int, QQueryOperations> hashRankNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashRankName');
    });
  }

  QueryBuilder<QuizSchema, int, QQueryOperations> hashStageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashStageId');
    });
  }

  QueryBuilder<QuizSchema, int, QQueryOperations> hashStageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashStageName');
    });
  }

  QueryBuilder<QuizSchema, String, QQueryOperations> rankIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rankId');
    });
  }

  QueryBuilder<QuizSchema, String, QQueryOperations> rankNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rankName');
    });
  }

  QueryBuilder<QuizSchema, String, QQueryOperations> stageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stageId');
    });
  }

  QueryBuilder<QuizSchema, String, QQueryOperations> stageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stageName');
    });
  }
}
