import 'package:meta/meta.dart';

@immutable
abstract class PokedexEvent {}

class LoadPokedexEvent extends PokedexEvent {}

class LoadNextPageEvent extends PokedexEvent {}
