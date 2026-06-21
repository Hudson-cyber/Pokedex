import 'package:pokedex/features/pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/features/pokedex/domain/repositories/pokedex_repository.dart';

class GetPokemonsUseCase {
  final IPokedexRepository repository;

  GetPokemonsUseCase({required this.repository});

  Future<List<PokemonEntity>> call({required int page}) async {
    if (page < 0) {
      throw Exception("A pagina não pode ser menor que zero");
    }
    return await repository.getPokemons(page: page);
  }
}
