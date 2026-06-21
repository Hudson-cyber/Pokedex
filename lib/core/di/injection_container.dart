import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_local_datasource_impl.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_remote_datasource_impl.dart';
import 'package:pokedex/features/pokedex/data/repositories/pokedex_repository_impl.dart';
import 'package:pokedex/features/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:pokedex/features/pokedex/domain/usecases/get_pokemons_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerLazySingleton<IPokemonRemoteDataSource>(
    () => PokemonRemoteDataSourceImpl(dio: sl()),
  );

  sl.registerLazySingleton<IPokemonLocalDataSource>(
    () => PokemonLocalDataSourceImpl(isar: sl()),
  );

  sl.registerLazySingleton<IPokedexRepository>(
    () => PokedexRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      //networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton(() => GetPokemonsUseCase(repository: sl()));

  //sl.registerFactory(() => PokedexBloc(getPokemonsUseCase: sl()));
}
