import 'package:flutter/material.dart';
import 'package:gym/constants.dart';
import 'package:gym/gym.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: appbarColor,
          centerTitle: true,
          elevation: 5,
          titleTextStyle: TextStyle(
            color: Colors.tealAccent,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            letterSpacing: 5
          )
        ),
        scaffoldBackgroundColor: scaffoldBackgroundColor
      ),
      home: const Gym(),
    );
  }
}
