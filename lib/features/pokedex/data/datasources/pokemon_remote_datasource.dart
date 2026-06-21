import 'package:pokedex/features/pokedex/data/models/pokemon_model.dart';

abstract class IPokemonRemoteDataSource {
  Future<List<PokemonModel>> fetchPokemonFromApi(int page);
}
