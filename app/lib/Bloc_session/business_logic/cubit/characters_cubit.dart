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

  List<CharacterModel> characters = [];
  List<CharacterModel> getAllCharacters() {
    characterRepository.getAllCharacters().then((value) {
      emit(CharactersLoaded(characters: value));
      characters = value;
      debugPrint(
          "Value : to GetAllCharacters ${characters.length} .... ${characters.map((e) => e.id)}");
    }).catchError((err) {
      debugPrint("Err : to GetAllCharacters .... $err");
    });
    return characters;
  }

  bool isSearch = false;
  List<CharacterModel> searchedCharacters = [];
  List<CharacterModel> searchCharacter(String pattern) {
    searchedCharacters = [];
    searchedCharacters = characters
        .where((character) => character.name.toLowerCase().startsWith(pattern))
        .toList();
    emit(CharactersSearched(characters: searchedCharacters));
    debugPrint(
        "Search pattern: $pattern : ${characters.length}-> number ${searchedCharacters.length}");
    return searchedCharacters.isEmpty ? characters : searchedCharacters;
  }
}
