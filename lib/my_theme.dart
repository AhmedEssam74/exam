import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightMode = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.red,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static ThemeData darkMode = ThemeData();
}
