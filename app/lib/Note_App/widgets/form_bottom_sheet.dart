import 'package:app/Note_App/widgets/custom_btn.dart';
import 'package:app/Note_App/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class FormBottomSheet extends StatefulWidget {
  const FormBottomSheet({
    super.key,
  });

  @override
  State<FormBottomSheet> createState() => _FormBottomSheetState();
}

class _FormBottomSheetState extends State<FormBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              onSaved: (val) => title = val,
              hintText: "Enter Task Title",
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onSaved: (val) => subTitle = val,
              hintText: "Enter Task des",
              maxLines: 5,
            ),
            const SizedBox(height: 64),
            CustomBtn(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  /* 
                  ToDo: ----------------------------------------------------------------
                   NoteModel noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: const Color(0xffFFCC80).value);
                  // noteModel->  Add to DB ................
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  Navigator.of(context).pop();
                  */
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
