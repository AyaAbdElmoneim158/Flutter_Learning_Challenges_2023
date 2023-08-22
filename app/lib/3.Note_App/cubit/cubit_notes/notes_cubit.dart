import 'package:app/3.Note_App/constants.dart';
import 'package:app/3.Note_App/models/note_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  void addNote(NoteModel note) {
    emit(AddNotesLoading());

    Hive.box<NoteModel>(knoteBox).add(note).then((value) {
      debugPrint("AddNotesSuccess..... $value");
      emit(AddNotesSuccess());
    }).catchError((err) {
      debugPrint("AddNotesFailure....");
      emit(AddNotesFailure(err: err.toString()));
    });
  }
}
