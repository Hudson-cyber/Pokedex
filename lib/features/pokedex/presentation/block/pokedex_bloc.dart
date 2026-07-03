import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/features/pokedex/domain/usecases/get_pokemons_usecase.dart';
import 'pokedex_event.dart';
import 'pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  final GetPokemonsUseCase getPokemonsUseCase;

  int _currentPage = 0;
  bool _isFetching = false;

  PokedexBloc({required this.getPokemonsUseCase})
    : super(PokedexInitialState()) {
    on<LoadPokedexEvent>((event, emit) async {
      if (_isFetching) return;
      _isFetching = true;
      emit(PokedexLoadingState());
      try {
        _currentPage = 0;
        final pokemons = await getPokemonsUseCase(page: _currentPage);
        emit(
          PokedexSuccessState(
            pokemons: pokemons,
            hasReachedMax: pokemons.length < 20,
          ),
        );
      } catch (e) {
        emit(PokedexErrorState(errorMessage: e.toString()));
      } finally {
        _isFetching = false;
      }
    });
    on<LoadNextPageEvent>((event, emit) async {
      if (_isFetching || state is! PokedexSuccessState) return;
      final currentState = state as PokedexSuccessState;
      if (currentState.hasReachedMax) return;
      _isFetching = true;
      _currentPage++;
      try {
        final newPokemons = await getPokemonsUseCase(page: _currentPage);
        if (newPokemons.isEmpty) {
          emit(
            PokedexSuccessState(
              pokemons: currentState.pokemons,
              hasReachedMax: true,
            ),
          );
        } else {
          emit(
            PokedexSuccessState(
              pokemons: List.from(currentState.pokemons)..addAll(newPokemons),
              hasReachedMax: false,
            ),
          );
        }
      } catch (e) {
        _currentPage--;
      } finally {
        _isFetching = false;
      }
    });
  }
}
