import 'package:pokedex/features/pokedex/domain/entities/pokemon_entity.dart';

abstract class IPokedexRepository {

Future<List<PokemonEntity>> getPokemons({required int page});

}
