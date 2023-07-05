import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFD1C4E9); // Light Purple
const Color secondaryColor = Color(0xFFFFFFFF); // White

final ThemeData appTheme = ThemeData(
  primaryColor: mainColor,
  accentColor: secondaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final TextStyle wordStyle = TextStyle(
  color: mainColor,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

final TextStyle flashcardStyle = TextStyle(
  color: mainColor,
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

final TextStyle chatStyle = TextStyle(
  color: secondaryColor,
  fontSize: 16.0,
);