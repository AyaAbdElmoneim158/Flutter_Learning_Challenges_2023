import 'package:app/Note_App/views/home_view.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(NoteModelAdapter());
  // await Hive.openBox(knoteBox);

  // Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App  🎯',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // textTheme: GoogleFonts.poppins(),
      ),
      home: const HomeView(),
    );
    /*MultiBlocProvider(
      providers: const [
        // BlocProvider(create: (context) => AddNotesCubit())
      ],
      child: ,
    );*/
  }
}
