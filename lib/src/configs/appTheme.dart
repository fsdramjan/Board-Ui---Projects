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
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: TextStyle(
        color: Colors.red,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: AppTheme.primaryColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: AppTheme.primaryColor),
      ),
      fillColor: Colors.white,
      filled: true,
    ),
  );
}
