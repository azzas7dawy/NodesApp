import 'package:flutter/material.dart';

import 'views/homepage.dart';

void main() {
  runApp(const MyApp());
}

final darkTheme = ThemeData(
 // primarySwatch: Colors.deepPurple,
  brightness: Brightness.dark,
  // Add more theme properties as needed
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // ),
      theme: ThemeData.dark(),
      home: const HomePage (),
    );
  }
}

