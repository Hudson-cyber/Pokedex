import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:pokedex/core/errors/exceptions.dart';
import 'package:pokedex/features/pokedex/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/features/pokedex/data/models/pokemon_model.dart';

class PokemonRemoteDataSourceImpl implements IPokemonRemoteDataSource {
  final Dio dio;
  PokemonRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<PokemonModel>> fetchPokemonFromApi(int page) async {
    final offset = page * 20;
    try {
      final response = await dio.get(
        'https://pokeapi.co/api/v2/pokemon?offset=$offset&limit=20',
      );
      final results = response.data['results'];
      final List<Future<Response>> detailsRequests = results.map((item) {
        return dio.get(item['url']);
      }).toList();

      final List<Response> detailResponses = await Future.wait(detailsRequests);

      // 4. Mapeia as respostas brutas para a nossa lista de Models
      List<PokemonModel> pokemons = detailResponses.map((detailResponse) {
        final detailData = detailResponse.data;

        List<String> typesList = (detailData['types'] as List)
            .map((typeObj) => typeObj['type']['name'] as String)
            .toList();

        return PokemonModel(
          id: detailData['id'],
          name: detailData['name'],
          imageUrl:
              detailData['sprites']['other']['official-artwork']['front_default'],
          types: typesList,
        );
      }).toList();

      return pokemons;
    } on DioException catch (e, stackTrace) {
      FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        reason: 'Falha de rede na PokéAPI. Código: ${e.response?.statusCode}',
      );
      print('Log de erro da API: ${e.message}');
      throw ServerException();
    } catch (e, stackTrace) {
      FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        reason: 'Erro de parseamento (JSON) ou erro inesperado na API',
      );
      print('Erro de parseamento ou desconhecido: $e');
      throw Exception('Falha interna ao processar os dados dos Pokémons.');
    }
  }
}
