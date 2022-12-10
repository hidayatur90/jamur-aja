import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HDFontFamily {
  final String title;
  final double fontSize;
  final List<Shadow>? shadow;
  final HexColor? color;

  HDFontFamily({
    required this.title,
    required this.fontSize,
    this.shadow,
    this.color,
  });

  RedHatDisplay() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Red Hat Display',
        color: color,
      ),
    );
  }

  RedHatDisplayBold() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Red Hat Display',
        color: color,
        fontWeight: FontWeight.bold,
        shadows: shadow,
      ),
    );
  }

  PoppinsBold() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Poppins',
      ),
    );
  }

  Default() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }

  DefaultBold() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
