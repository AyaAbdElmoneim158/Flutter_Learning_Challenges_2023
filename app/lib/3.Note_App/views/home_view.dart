import 'package:app/3.Note_App/widgets/body_home_view.dart';
import 'package:app/3.Note_App/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            context: context,
            builder: (context) => const CustomBottomSheet(),
            /*(context) => BlocProvider(
              create: (context) => AddNotesCubit(),
              child: ),*/
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const BodyHomeView(),
    );
  }
}
