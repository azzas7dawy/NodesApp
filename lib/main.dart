import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notessapp/Models/cardmodel.dart';

import 'views/homepage.dart';
import 'widgets/constants/colors.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

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
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
