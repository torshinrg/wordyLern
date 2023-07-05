import 'package:flutter/material.dart';
import 'package:wordlearny/screens/main_screen.dart';

class WordLearnyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordLearny',
      theme: ThemeData(
        primaryColor: Color(0xFFA066B2),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainScreen(),
    );
  }
}

