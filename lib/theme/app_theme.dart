import 'package:flutter/material.dart';

class AppTheme {
  static ValueNotifier<bool> isDarkTheme = ValueNotifier(false);

  static ThemeData getTheme() {
    return ThemeData(
      primaryColor: isDarkTheme.value ? Colors.purple : Colors.deepOrangeAccent,
      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme.value ? Colors.purple : Colors.deepOrangeAccent,
      ),
    );
  }
}