import 'package:flutter/material.dart';

class Themes {
  static const primary = Colors.indigo;

  static final themes = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: primary, elevation: 0),
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
      ),
      scaffoldBackgroundColor: Colors.grey[200]);
}
