import 'package:flutter/material.dart';

class ColorPalette {
  // Color Palette
  static const Color cPrimary = Color(0xFFD61355);
  static const Color cSecondary = Color(0xFFF94A29);
  static const Color gWhite = Color(0xFFEFF5F5);
  static const Color gLight = Color(0xFFD6E4E5);
  static const Color gGrey = Color(0xFFA1B2B4);
  static const Color gDark = Color(0xFF3C4344);
  static const Color gBlack = Color(0xFF1E2222);
  // Color Constants
  static const MaterialColor primaryColor = MaterialColor(
    0xFFD61355,
    <int, Color>{
      50: Color(0xFFD61355),
      100: Color(0xFFD61355),
      200: Color(0xFFD61355),
      300: Color(0xFFD61355),
      400: Color(0xFFD61355),
      500: Color(0xFFD61355),
      600: Color(0xFFD61355),
      700: Color(0xFFD61355),
      800: Color(0xFFD61355),
      900: Color(0xFFD61355),
    },
  );
  static const Color iconColor = ColorPalette.gWhite;
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      ColorPalette.cPrimary,
      ColorPalette.cSecondary,
    ],
  );
}

class ItemSize {
  static const double iconSize = 32;
  static const double buttonSize = 250;
}

class ContainerSize {
  static const double paddingSize = 10.0;
}

class TextSize {
  static const TextStyle grandButtonTextStyle = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: ColorPalette.gWhite,
  );
}
