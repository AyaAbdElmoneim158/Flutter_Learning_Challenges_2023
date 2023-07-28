import 'package:app/Note_App/widgets/body_home_view.dart';
import 'package:app/Note_App/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /*
      TODo: ----------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            context: context,
            builder: (context) => BlocProvider(
              create: (context) => AddNotesCubit(),
              child: const CustomBottomSheet(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),*/
      body: const BodyHomeView(),
    );
  }
}
