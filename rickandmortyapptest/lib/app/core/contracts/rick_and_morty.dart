import 'package:rickandmortyapptest/app/data/models/characters.dart';

abstract class RickAndMortyServiceContract {
  Future<RAndMCharacters> getAllCharacters();
}
