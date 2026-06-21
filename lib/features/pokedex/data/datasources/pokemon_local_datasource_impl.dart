import 'package:isar/isar.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/features/pokedex/data/models/pokemon_collection.dart';
import 'package:pokedex/features/pokedex/data/models/pokemon_model.dart';

class PokemonLocalDataSourceImpl implements IPokemonLocalDataSource {
  final Isar isar;

  PokemonLocalDataSourceImpl({required this.isar});

  @override
  Future<void> cachePokemons(List<PokemonModel> pokemonsToCache) async {
    final collections = pokemonsToCache
        .map(
          (e) => PokemonCollection()
            ..pokeId = e.id
            ..name = e.name
            ..imageUrl = e.imageUrl
            ..types = e.types,
        )
        .toList();

    await isar.writeTxn(() async {
      await isar.pokemonCollections.putAll(collections);
    });
  }

  @override
  Future<List<PokemonModel>> getCachedPokemons() async {
    final collections = await isar.pokemonCollections.where().findAll();
    return collections
        .map(
          (e) => PokemonModel(
            id: e.pokeId,
            name: e.name,
            imageUrl: e.imageUrl,
            types: e.types,
          ),
        )
        .toList();
  }
}
