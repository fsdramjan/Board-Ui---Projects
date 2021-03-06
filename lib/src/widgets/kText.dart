import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class KText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  KText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: fontSize != null ? fontSize : 16,
        fontFamily: fontFamily != null ? fontFamily : 'Poppins Regular',
        color: color != null ? color : HexColor('#323643'),
        fontWeight: fontWeight != null ? fontWeight : FontWeight.normal,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
