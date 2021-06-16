import 'package:rickandmortyapptest/app/core/contracts/rick_and_morty.dart';
import 'package:rickandmortyapptest/app/data/models/characters.dart';

class RickAndMortyServices implements RickAndMortyServiceContract {
  @override
  Future<List<Characters>> getAllCharacters() {
    throw UnimplementedError();
  }

  @override
  Future<List<Characters>> getAllCharactersByName() {
    throw UnimplementedError();
  }

  @override
  Future<Characters> getCharacterById(id) {
    throw UnimplementedError();
  }
}
