import 'package:app/Note_App/widgets/form_bottom_sheet.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /*return  BlocConsumer<AddNotesCubit, AddNotesState>(
      listener: (context, state) {
        if (state is AddNotesSuccess) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                    title: "Success",
                    message: "Add to do Successfully",
                    contentType: ContentType.success)));
        }
      },
      builder: (context, state) {
        */
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: const FormBottomSheet(),
    );
    // },
    // );
  }
}
