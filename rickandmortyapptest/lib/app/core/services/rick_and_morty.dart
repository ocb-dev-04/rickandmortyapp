import 'package:rickandmortyapptest/app/constants/api_values.dart';
import 'package:rickandmortyapptest/app/core/contracts/rick_and_morty.dart';
import 'package:rickandmortyapptest/app/core/core_config/dio_client.dart';
import 'package:rickandmortyapptest/app/data/models/characters.dart';

class RickAndMortyServices implements RickAndMortyServiceContract {
  final client = DioClient.getClient();
  @override
  Future<RAndMCharacters> getAllCharacters() async {
    final characters = await client.get(ApiValues.CharacterExtraUri);
    late RAndMCharacters charactersList;
    if (characters.statusCode == 200) {
      charactersList = RAndMCharacters.fromJson(characters.data);
    }

    return charactersList;
  }

  @override
  Future<RAndMCharacters> getAllCharactersByName() {
    throw UnimplementedError();
  }
}
