// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Bloc_session/data/model/character_model.dart';
import 'package:app/Bloc_session/data/services/charachter_services.dart';

class CharachterRepository {
  CharachterServices charachterServices;
  CharachterRepository({required this.charachterServices});

  /// GetAllCharacters ---------------------------------------------------------
  Future<List<CharacterModel>> getAllCharacters() async {
    var charachters = await charachterServices.getAllCharacters();
    return charachters
        .map((charachter) => CharacterModel.fromJson(charachter))
        .toList();
  }
}
