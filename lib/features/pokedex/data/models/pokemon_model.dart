import 'package:pokedex/features/pokedex/domain/entities/pokemon_entity.dart';

class PokemonModel extends PokemonEntity {
  PokemonModel({
    required super.id,
    required super.name,
    required super.imageUrl,
    required super.types,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    List<String> typesList = (json['types'] as List)
        .map((e) => e['type']['name'] as String)
        .toList();

    return PokemonModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['sprites']['other']['official-artwork']['front_default'],
      types: typesList,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'imageUrl': imageUrl, 'types': types};
  }
}
