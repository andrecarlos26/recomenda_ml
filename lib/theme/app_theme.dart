import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.blueGrey, // Um tom de azul como cor primária
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      accentColor: Colors.lightBlueAccent, // Cor de destaque
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue, // Cor da AppBar
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Cor de fundo do botão
        foregroundColor: Colors.white, // Cor do texto do botão
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    ),
  );
}
