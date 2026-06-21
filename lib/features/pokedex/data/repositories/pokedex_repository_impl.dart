import 'package:pokedex/features/pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/features/pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex/features/pokedex/domain/repositories/pokedex_repository.dart';

class PokedexRepositoryImpl implements IPokedexRepository {
  final IPokemonRemoteDataSource remoteDataSource;
  final IPokemonLocalDataSource localDataSource;
  // final NetworkInfo networkInfo;

  PokedexRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    //  required this.networkInfo,
  });
  @override
  Future<List<PokemonEntity>> getPokemons({required int page}) async {
    //if( await networkInfo.isConnected){
    try {
      final remotePokemons = await remoteDataSource.fetchPokemonFromApi(page);
      await localDataSource.cachePokemons(remotePokemons);
      return remotePokemons;
    } catch (e) {
      return await localDataSource.getCachedPokemons();
    }
    /*}else{
      return await localDataSource.getCachedPokemons();
   }*/
  }
}
