import 'package:flutter/material.dart';

ThemeData appTheme() {
  // Definindo cores customizadas
  const MaterialColor customBlue = MaterialColor(
    0xFF0047AB, // Um tom de azul profundo como cor primária
    <int, Color>{
      50: Color(0xFFE6F2FF),
      100: Color(0xFFCCE0FF),
      200: Color(0xFF99C2FF),
      300: Color(0xFF66A3FF),
      400: Color(0xFF3385FF),
      500: Color(0xFF0066FF),
      600: Color(0xFF005CE6),
      700: Color(0xFF0052CC),
      800: Color(0xFF0047B3),
      900: Color(0xFF003D99),
    },
  );

// Cor prateada metálica para detalhes
  const Color customGreen = Color(0xFF00BFB2); // Um verde tecnológico para destaques

  return ThemeData(
    primarySwatch: customBlue, // Usando azul profundo como cor primária
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: customBlue,
      accentColor: customGreen, // Usando verde tecnológico como cor de destaque
    ),
    appBarTheme: const AppBarTheme(
      color: customBlue, // Usando azul profundo na AppBar
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: customGreen, // Usando verde tecnológico para o botão
        foregroundColor: Colors.white, // Cor do texto do botão
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    ),
  );
}

