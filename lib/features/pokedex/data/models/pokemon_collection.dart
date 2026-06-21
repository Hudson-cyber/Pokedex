import 'package:isar/isar.dart';

part 'pokemon_collection.g.dart';

@Collection()
class PokemonCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late int pokeId;

  late String name;
  late String imageUrl;
  late List<String> types;
}
