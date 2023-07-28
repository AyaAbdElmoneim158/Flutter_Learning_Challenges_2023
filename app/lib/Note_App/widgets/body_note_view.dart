import 'package:app/Note_App/widgets/custom_appbar.dart';
import 'package:app/Note_App/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class BodyNoteView extends StatelessWidget {
  const BodyNoteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                Navigator.of(context).pop();
              }),
          const SizedBox(height: 32),
          const CustomTextField(hintText: "Enter Task Title"),
          const SizedBox(height: 16),
          const CustomTextField(
            hintText: "Enter Task des",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
