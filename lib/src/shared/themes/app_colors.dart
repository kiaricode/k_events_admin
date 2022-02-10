import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color light = Color(0xFFF7F8FC);
  static const Color lightBackground = Color(0xFFF9F9F9);
  static const Color lightGrey1 = Color(0xFFA4A6B3);
  static const Color lightGrey2 = Color(0xFFC5C7CD);
  static const Color dark = Color(0xFF212121);
  static const Color dark1 = Color(0xFF363740);
  static const Color activeLight = Color(0xFF512DA8);
  static const Color activeDark = Color(0xFF271D66);
  static const Color activeDark3 = Color(0xFF442BDF);
  static const Color activeDark2 = Color(0xFF37298D);

  static const MaterialColor mPrimaryColor = MaterialColor(
    0xFF442BDF,
    <int, Color>{
      50: Color(0xFF442BDF),
      100: Color(0xFFA4A4BF),
      200: Color(0xFFA4A4BF),
      300: Color(0xFF9191B3),
      400: Color(0xFF7F7FA6),
      500: Color(0xFF181861),
      600: Color(0xFF6D6D99),
      700: Color(0xFF5B5B8D),
      800: Color(0xFF494980),
      900: Color(0xFF181861),
    },
  );
}
