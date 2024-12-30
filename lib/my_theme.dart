import 'package:flutter/material.dart';

class MyTheme {
  static const Color mainColor = Color(0xff4838D1);
  static ThemeData lightMode = ThemeData(
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: Color(0xff010104),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),titleSmall: TextStyle(
        color: Color(0xff4838D1),
        fontSize:20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData darkMode = ThemeData();
}
