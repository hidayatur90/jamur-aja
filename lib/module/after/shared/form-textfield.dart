import 'package:fhe_template/module/after/shared/hex-colors.dart';
import 'package:flutter/material.dart';

class HDFormTextField extends StatefulWidget {
  final String hintText;
  final bool? obscureText;
  final int? maxLines;
  const HDFormTextField({
    Key? key,
    required this.hintText,
    this.maxLines,
    this.obscureText,
  }) : super(key: key);

  @override
  State<HDFormTextField> createState() => _HDFormTextFieldState();
}

class _HDFormTextFieldState extends State<HDFormTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 10,
          offset: const Offset(0.0, 0.0),
          color: Colors.black.withOpacity(1.0),
          spreadRadius: -9,
        )
      ]),
      child: TextFormField(
        maxLines: widget.maxLines ?? 1,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          fillColor: HDColor().colorFontLight(),
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Red Hat Display',
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: HDColor().colorPrimary(), width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: HDColor().colorDefault(), width: 1.0),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
