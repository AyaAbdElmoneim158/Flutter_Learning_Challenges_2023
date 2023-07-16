// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<CharacterModel> characters;
  CharactersLoaded({
    required this.characters,
  });
}

class CharactersSearched extends CharactersState {
  final List<CharacterModel> characters;
  CharactersSearched({
    required this.characters,
  });
}