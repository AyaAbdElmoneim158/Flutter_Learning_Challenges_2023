import 'package:app/Note_App/constants.dart';
import 'package:app/Note_App/cubit/cubit_notes/notes_cubit.dart';
import 'package:app/Note_App/models/note_model.dart';
import 'package:app/Note_App/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:app/Note_App/cubit/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(knoteBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit()),
      ],
      child: MaterialApp(
        title: 'ToDo App  🎯',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const HomeView(),
      ),
    );
  }
}
