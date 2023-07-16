import 'package:app/Bloc_session/data/model/character_model.dart';
import 'package:app/Bloc_session/data/services/character_services.dart';

class CharacterRepository {
  CharacterServices characterServices;
  CharacterRepository({required this.characterServices});

  /// GetAllCharacters ---------------------------------------------------------
  Future<List<CharacterModel>> getAllCharacters() async {
    var characters = await characterServices.getAllCharacters();
    return characters
        .map((character) => CharacterModel.fromJson(character))
        .toList();
  }
}
