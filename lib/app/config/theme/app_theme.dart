import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFF5EDF0);

const List<Color> _colorTheme = [
  _customColor,
  Color(0xFFEC6707),//Boton
  Color(0xFFA5A7AC),//Boton,fondo para registrarse y inicio de sesion
  Color(0xFFFF00D6),//Boton
  Color(0xFF040404),// Texto y Titulo
  Color(0xFFFFFCFC),// background color (fondo),texto
  Color(0xFF034AFF),// boton
  Color(0xFFD9D9D9),//boton
  Color(0xFFFA6B1A),//boton
  Color(0xFFFF000F),//botones
  Color(0xFF02FF1B),//botones
];
/* AppTheme esto es para el tema de la app que son los colores y las formas de la app*/
class AppTheme {
  final int selectedThemeColor;
  AppTheme({this.selectedThemeColor = 0})
      : assert(
            selectedThemeColor >= 0 && selectedThemeColor < _colorTheme.length);

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorTheme[selectedThemeColor],
        appBarTheme: AppBarTheme(color: _colorTheme[selectedThemeColor]),
        iconTheme: IconThemeData(color: _colorTheme[selectedThemeColor]),
    textTheme: const TextTheme(
    titleSmall: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.green,
    fontFamily: 'Roboto',
    ),
    bodyLarge: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.greenAccent,
    fontFamily: 'Roboto',
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.amber,
    )
    ),
    );
  }
}

