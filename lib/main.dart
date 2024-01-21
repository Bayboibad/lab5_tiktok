import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab5_tiktok/screen/home/home_page.dart';
import 'package:lab5_tiktok/screen/home/tab/bloc/tab_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<TabBloc>(
      create: (context) => TabBloc(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.lexendDeca().fontFamily,
      ),
      home: HomePage(),
    );
  }
}
