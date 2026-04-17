import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:AppBarTheme(
          backgroundColor: Color.fromARGB(0, 83, 108, 167),
        ) ,
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 15, 11, 23)),
      ),
      home: const MyHomePage(),
    );
  }
}

