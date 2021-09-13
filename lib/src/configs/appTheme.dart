import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static Color primaryColor = HexColor('#41D9C6');
  static Color white = HexColor('#ffffff');
  static Color textColor = HexColor('#323643');
  static Color textColor2 = HexColor('#BCBCBC');
  static Color iconColor = HexColor('#F7D107');

  static ThemeData appTheme = ThemeData(
      fontFamily: 'Poppins Regular',
      scaffoldBackgroundColor: HexColor('#FFFFFF'),
      appBarTheme: AppBarTheme(
        backgroundColor: HexColor('#FFFFFF'),
        elevation: 0,
        iconTheme: IconThemeData(
          color: HexColor('#323643'),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade100,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade100,
          ),
        ),
      ));
}
