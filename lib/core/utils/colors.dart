import 'package:flutter/material.dart';

class AppColors {
  static const beigeColor = Color(0xFF1C0F0D);
  static const redPinkMain = Color(0xFFFD5D69);
  static const pinkSub = Color(0xFFEC888D);
  static const pink = Color(0xFFFFC6C9);

  static final lightColorScheme = ColorScheme(
    brightness: Brightness.dark,
    surface: beigeColor,
    onSurface: Colors.white,
    primary: redPinkMain,
    onPrimary: Colors.white,
    secondary: pink,
    onSecondary: pinkSub,
    error: redPinkMain,
    onError: Colors.white,
  );
}
