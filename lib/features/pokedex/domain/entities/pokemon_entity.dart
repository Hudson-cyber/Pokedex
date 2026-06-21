class PokemonEntity {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;


  PokemonEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types
  });
}