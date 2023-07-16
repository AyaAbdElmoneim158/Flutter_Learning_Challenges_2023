// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Bloc_session/data/model/character_model.dart';
import 'package:app/Bloc_session/data/repository/character_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit({required this.characterRepository})
      : super(CharactersInitial());

  CharacterRepository characterRepository;

  /// GetAllCharacters ---------------------------------------------------------
  List<CharacterModel> characters = [];
  List<CharacterModel> getAllCharacters() {
    characterRepository.getAllCharacters().then((value) {
      emit(CharactersLoaded(characters: value));
      characters = value;
      debugPrint(
          "Value : to GetAllCharacters ${characters.length} .... ${characters.map((e) => e.id)}");
      // return value;
    }).catchError((err) {
      debugPrint("Err : to GetAllCharacters .... $err");
    });
    // return [];
    return characters;
  }
}
