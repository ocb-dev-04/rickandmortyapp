import 'package:rickandmortyapptest/app/data/models/characters.dart';

abstract class RickAndMortyServiceContract {
  Future<List<Characters>> getAllCharacters();
  Future<List<Characters>> getAllCharactersByName();
  Future<Characters> getCharacterById(dynamic id);
}
