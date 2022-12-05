import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HDTextFieldForm extends StatefulWidget {
  final String hintText;
  final bool? obscureText;
  final int? maxLines;
  const HDTextFieldForm({
    Key? key,
    required this.hintText,
    this.maxLines,
    this.obscureText,
  }) : super(key: key);

  @override
  State<HDTextFieldForm> createState() => _HDTextFieldFormState();
}

class _HDTextFieldFormState extends State<HDTextFieldForm> {
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
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Red Hat Display',
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: HexColor('#FFDE5B'), width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: HexColor('#C4C4C4'), width: 1.0),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
