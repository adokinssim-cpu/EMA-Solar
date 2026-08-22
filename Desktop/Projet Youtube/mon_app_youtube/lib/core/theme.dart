import 'package:flutter/material.dart';

class AppTheme {
  // On définit les couleurs principales ici
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor:
          Colors.black, // Couleur du texte et des icônes dans l'AppBar
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black54,
    ),
  );
}
