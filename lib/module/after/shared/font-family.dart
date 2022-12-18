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

  // Red Hat Display
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
        fontFamily: 'Red Hat Display Bold',
        color: color,
        // fontWeight: FontWeight.bold,
        shadows: shadow,
      ),
    );
  }

  // Poppins
  Poppins() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Poppins',
      ),
    );
  }

  PoppinsBold() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Poppins Bold',
      ),
    );
  }

  // Work Sans
  WorkSans() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Work Sans',
      ),
    );
  }

  WorkSansBold() {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Work Sans Bold',
      ),
    );
  }

  // Default
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
