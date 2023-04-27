import 'package:flutter/material.dart';

class Themes {
  static const primary = Colors.indigo;

  static final themes = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
    inputDecorationTheme:  const InputDecorationTheme(
      
      
      border: InputBorder.none,
      fillColor: Colors.white,
      filled: true,
      labelStyle: TextStyle(color: Colors.black)
    ),
    scaffoldBackgroundColor: Colors.grey[200],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
      ),
    ),
  );
}
