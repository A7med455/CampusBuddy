import 'package:flutter/material.dart';

// All the app colors in one place. Change them here and the whole app changes.
const Color primaryColor = Color.fromARGB(255, 1, 14, 192); // teal
const Color backgroundColor = Color(0xFFE8F5F3); // very light teal

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 5, 144)),

  // Background color of all screens (instead of plain white)
  scaffoldBackgroundColor: backgroundColor,

  // AppBar style
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 14, 0, 96),
    foregroundColor: Color.fromARGB(255, 242, 242, 242), // title + icons color
    centerTitle: true,
  ),

  // ElevatedButton style (Login, Back, Create Account)
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 0, 10, 154),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
);