import 'package:app/3.Note_App/widgets/body_note_view.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyNoteView(),
    );
  }
}
