// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Bloc_session/data/model/character_model.dart';
import 'package:app/Bloc_session/data/repository/charachter_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit({required this.charachterRepository})
      : super(CharactersInitial());

  CharachterRepository charachterRepository;

  /// GetAllCharacters ---------------------------------------------------------
  List<CharacterModel> charachters = [];
  List<CharacterModel> getAllCharacters() {
    charachterRepository.getAllCharacters().then((value) {
      charachters = value;
      emit(CharactersLoaded(charchters: value));
    }).catchError((err) {
      debugPrint("Err : to GetAllCharacters .... $err");
    });
    return charachters;
  }
}
