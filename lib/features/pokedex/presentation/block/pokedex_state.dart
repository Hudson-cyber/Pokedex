import 'package:meta/meta.dart';
import '../../domain/entities/pokemon_entity.dart';

@immutable
abstract class PokedexState {}

class PokedexInitialState extends PokedexState {}

class PokedexLoadingState extends PokedexState {}

class PokedexSuccessState extends PokedexState {
  final List<PokemonEntity> pokemons;
  final bool hasReachedMax;

  PokedexSuccessState({this.hasReachedMax = false, required this.pokemons});
}

class PokedexErrorState extends PokedexState {
  final String errorMessage;

  PokedexErrorState({required this.errorMessage});
}
