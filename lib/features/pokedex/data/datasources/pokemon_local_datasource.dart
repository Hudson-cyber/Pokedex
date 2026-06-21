import 'package:pokedex/features/pokedex/data/models/pokemon_model.dart';

abstract class IPokemonLocalDataSource {
  Future<List<PokemonModel>> getCachedPokemons();
  Future<void> cachePokemons(List<PokemonModel> pokemonsToCache);
}
