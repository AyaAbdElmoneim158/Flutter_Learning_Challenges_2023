import 'package:app/3.Note_App/constants.dart';
import 'package:app/3.Note_App/cubit/cubit_notes/notes_cubit.dart';
import 'package:app/3.Note_App/models/note_model.dart';
import 'package:app/3.Note_App/views/home_view.dart';
import 'package:app/4.Bookly_App/core/constants.dart';
import 'package:app/4.Bookly_App/features/splash/Presentation/View/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:app/3.Note_App/cubit/observer.dart';
import 'package:get/get.dart';

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
      child: GetMaterialApp(
          title: 'Book App 📚', //'ToDo App  🎯',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: GoogleFonts.montserratTextTheme(),
            scaffoldBackgroundColor: AppColors.kprimaryColor,
          ),
          home: const SplashView()
          // const HomeView(), :> to NoteApp
          ),
    );
  }
}
