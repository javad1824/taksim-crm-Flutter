import 'package:flutter/material.dart';

class TaksimTheme {
  static const Color surface50 = Color(0xFF2D3142);
  static const Color surface100 = Color(0xFF1F222E);
  static const Color surface200 = Color(0xFF161922);
  static const Color surface300 = Color(0xFF0F1115);
  static const Color primaryColor = Color(0xFFEAB308); // زرد اکسنت تکسیم

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: surface300,
      fontFamily: 'Vazirmatn', // استفاده از فونت فارسی وزیرمتن
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        surface: surface100,
        background: surface300,
        onPrimary: Colors.black,
      ),
      cardTheme: CardTheme(
        color: surface100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: surface50, width: 1),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: surface100,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
