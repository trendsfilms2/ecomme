import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.teal,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(fontSize: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
    );
  }
}
