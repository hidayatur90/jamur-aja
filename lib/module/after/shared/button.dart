import 'package:fhe_template/module/after/shared/font-family.dart';
import 'package:fhe_template/module/after/shared/hex-colors.dart';
import 'package:flutter/material.dart';

class HDButtonPrimary extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final GestureTapCallback onPressed;
  const HDButtonPrimary({
    Key? key,
    required this.title,
    required this.height,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: HDColor().colorButton(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          onPressed: onPressed,
          child: HDFontFamily(title: title, fontSize: 15).PoppinsBold()),
    );
  }
}
