// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPokemonCollectionCollection on Isar {
  IsarCollection<PokemonCollection> get pokemonCollections => this.collection();
}

const PokemonCollectionSchema = CollectionSchema(
  name: r'PokemonCollection',
  id: 3791656485791643456,
  properties: {
    r'imageUrl': PropertySchema(
      id: 0,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'pokeId': PropertySchema(
      id: 2,
      name: r'pokeId',
      type: IsarType.long,
    ),
    r'types': PropertySchema(
      id: 3,
      name: r'types',
      type: IsarType.stringList,
    )
  },
  estimateSize: _pokemonCollectionEstimateSize,
  serialize: _pokemonCollectionSerialize,
  deserialize: _pokemonCollectionDeserialize,
  deserializeProp: _pokemonCollectionDeserializeProp,
  idName: r'id',
  indexes: {
    r'pokeId': IndexSchema(
      id: -4491557577804876128,
      name: r'pokeId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'pokeId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _pokemonCollectionGetId,
  getLinks: _pokemonCollectionGetLinks,
  attach: _pokemonCollectionAttach,
  version: '3.1.0+1',
);

int _pokemonCollectionEstimateSize(
  PokemonCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.imageUrl.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.types.length * 3;
  {
    for (var i = 0; i < object.types.length; i++) {
      final value = object.types[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _pokemonCollectionSerialize(
  PokemonCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.imageUrl);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.pokeId);
  writer.writeStringList(offsets[3], object.types);
}

PokemonCollection _pokemonCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PokemonCollection();
  object.id = id;
  object.imageUrl = reader.readString(offsets[0]);
  object.name = reader.readString(offsets[1]);
  object.pokeId = reader.readLong(offsets[2]);
  object.types = reader.readStringList(offsets[3]) ?? [];
  return object;
}

P _pokemonCollectionDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pokemonCollectionGetId(PokemonCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pokemonCollectionGetLinks(
    PokemonCollection object) {
  return [];
}

void _pokemonCollectionAttach(
    IsarCollection<dynamic> col, Id id, PokemonCollection object) {
  object.id = id;
}

extension PokemonCollectionByIndex on IsarCollection<PokemonCollection> {
  Future<PokemonCollection?> getByPokeId(int pokeId) {
    return getByIndex(r'pokeId', [pokeId]);
  }

  PokemonCollection? getByPokeIdSync(int pokeId) {
    return getByIndexSync(r'pokeId', [pokeId]);
  }

  Future<bool> deleteByPokeId(int pokeId) {
    return deleteByIndex(r'pokeId', [pokeId]);
  }

  bool deleteByPokeIdSync(int pokeId) {
    return deleteByIndexSync(r'pokeId', [pokeId]);
  }

  Future<List<PokemonCollection?>> getAllByPokeId(List<int> pokeIdValues) {
    final values = pokeIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'pokeId', values);
  }

  List<PokemonCollection?> getAllByPokeIdSync(List<int> pokeIdValues) {
    final values = pokeIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'pokeId', values);
  }

  Future<int> deleteAllByPokeId(List<int> pokeIdValues) {
    final values = pokeIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'pokeId', values);
  }

  int deleteAllByPokeIdSync(List<int> pokeIdValues) {
    final values = pokeIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'pokeId', values);
  }

  Future<Id> putByPokeId(PokemonCollection object) {
    return putByIndex(r'pokeId', object);
  }

  Id putByPokeIdSync(PokemonCollection object, {bool saveLinks = true}) {
    return putByIndexSync(r'pokeId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByPokeId(List<PokemonCollection> objects) {
    return putAllByIndex(r'pokeId', objects);
  }

  List<Id> putAllByPokeIdSync(List<PokemonCollection> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'pokeId', objects, saveLinks: saveLinks);
  }
}

extension PokemonCollectionQueryWhereSort
    on QueryBuilder<PokemonCollection, PokemonCollection, QWhere> {
  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhere> anyPokeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'pokeId'),
      );
    });
  }
}

extension PokemonCollectionQueryWhere
    on QueryBuilder<PokemonCollection, PokemonCollection, QWhereClause> {
  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      idBetween(
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      pokeIdEqualTo(int pokeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'pokeId',
        value: [pokeId],
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      pokeIdNotEqualTo(int pokeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokeId',
              lower: [],
              upper: [pokeId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokeId',
              lower: [pokeId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokeId',
              lower: [pokeId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'pokeId',
              lower: [],
              upper: [pokeId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      pokeIdGreaterThan(
    int pokeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'pokeId',
        lower: [pokeId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      pokeIdLessThan(
    int pokeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'pokeId',
        lower: [],
        upper: [pokeId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterWhereClause>
      pokeIdBetween(
    int lowerPokeId,
    int upperPokeId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'pokeId',
        lower: [lowerPokeId],
        includeLower: includeLower,
        upper: [upperPokeId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PokemonCollectionQueryFilter
    on QueryBuilder<PokemonCollection, PokemonCollection, QFilterCondition> {
  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      pokeIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pokeId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      pokeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pokeId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      pokeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pokeId',
        value: value,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      pokeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pokeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'types',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'types',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'types',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'types',
        value: '',
      ));
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterFilterCondition>
      typesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'types',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PokemonCollectionQueryObject
    on QueryBuilder<PokemonCollection, PokemonCollection, QFilterCondition> {}

extension PokemonCollectionQueryLinks
    on QueryBuilder<PokemonCollection, PokemonCollection, QFilterCondition> {}

extension PokemonCollectionQuerySortBy
    on QueryBuilder<PokemonCollection, PokemonCollection, QSortBy> {
  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      sortByPokeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokeId', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      sortByPokeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokeId', Sort.desc);
    });
  }
}

extension PokemonCollectionQuerySortThenBy
    on QueryBuilder<PokemonCollection, PokemonCollection, QSortThenBy> {
  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByPokeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokeId', Sort.asc);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QAfterSortBy>
      thenByPokeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pokeId', Sort.desc);
    });
  }
}

extension PokemonCollectionQueryWhereDistinct
    on QueryBuilder<PokemonCollection, PokemonCollection, QDistinct> {
  QueryBuilder<PokemonCollection, PokemonCollection, QDistinct>
      distinctByImageUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QDistinct>
      distinctByPokeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pokeId');
    });
  }

  QueryBuilder<PokemonCollection, PokemonCollection, QDistinct>
      distinctByTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'types');
    });
  }
}

extension PokemonCollectionQueryProperty
    on QueryBuilder<PokemonCollection, PokemonCollection, QQueryProperty> {
  QueryBuilder<PokemonCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PokemonCollection, String, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<PokemonCollection, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PokemonCollection, int, QQueryOperations> pokeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pokeId');
    });
  }

  QueryBuilder<PokemonCollection, List<String>, QQueryOperations>
      typesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'types');
    });
  }
}
