import 'package:exam/homeScreen.dart';
import 'package:exam/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Homescreen.routName,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
      themeMode: ThemeMode.light,
      routes: {
        Homescreen.routName: (context) => const Homescreen(),
      },
    );
  }
}