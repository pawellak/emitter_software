import 'package:flutter/material.dart';

abstract class AppColors {
  static const cWhite = Color(0xFFFFFFFF);
  static const cBlack = Color(0xFF000000);
  static const cTransparent = Colors.transparent;
  static const MaterialColor cGray = MaterialColor(
    0xFF667085,
    <int, Color>{
      100: Color(0xFFF2F4F7),
      200: Color(0xFFEAECF0),
      300: Color(0xFFD0D5DD),
      400: Color(0xFF98A2B3),
      500: Color(0xFF667085),
      600: Color(0xFF475467),
      700: Color(0xFF344054),
      800: Color(0xFF1D2939),
      900: Color(0xFF101728),
    },
  );

  static const MaterialColor cPrimary = MaterialColor(
    0xFF001D52,
    <int, Color>{
      50: Color(0xFFE6EAF3),
      100: Color(0xFF96AACE),
      200: Color(0xFF2B539B),
      300: Color(0xFF003087),
      400: Color(0xFF00225F),
      500: Color(0xFF001D52),
    },
  );

  static const MaterialColor cSecondary = MaterialColor(
    0xFF8D929B,
    <int, Color>{
      100: Color(0xFFF1F6FE),
      200: Color(0xFFEBF2FE),
      300: Color(0xFFE7EFFE),
      400: Color(0xFFA2A7B2),
      500: Color(0xFF8D929B),
    },
  );

  static const MaterialColor cSuccess = MaterialColor(
    0xFF175313,
    <int, Color>{
      100: Color(0xFF81BA7D),
      200: Color(0xFF4B9C45),
      300: Color(0xFF26881F),
      400: Color(0xFF1B5F16),
      500: Color(0xFF175313),
    },
  );

  static const MaterialColor cError = MaterialColor(
    0xFF6B0604,
    <int, Color>{
      75: Color(0xFFDF9B99),
      100: Color(0xFFD1716F),
      200: Color(0xFFBD3431),
      300: Color(0xFFB00A07),
      400: Color(0xFF7B0705),
      500: Color(0xFF6B0604),
    },
  );

  static const MaterialColor cAlert = MaterialColor(
    0xFF8E4B21,
    <int, Color>{
      75: Color(0xFFF6C9AD),
      100: Color(0xFFF2B28A),
      200: Color(0xFFEC9158),
      300: Color(0xFFE87B36),
      400: Color(0xFFA25626),
      500: Color(0xFF8E4B21),
    },
  );
}
