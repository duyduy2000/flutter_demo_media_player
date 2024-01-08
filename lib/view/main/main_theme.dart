import 'package:flutter/material.dart';

abstract class MainTheme {
  static ThemeData get() => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        elevatedButtonTheme: _buttonTheme.elevatedButton,
        useMaterial3: true,
      );

  static ({ElevatedButtonThemeData elevatedButton}) get _buttonTheme => (
        elevatedButton: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade50,
          foregroundColor: Colors.blue.shade900,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          textStyle: const TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      );
}
