import 'package:fhe_template/module/after/shared/hex-colors.dart';
import 'package:flutter/material.dart';

class HDFormReadOnly extends StatefulWidget {
  final String labelText;
  final String initialValue;
  final int? maxLines;
  const HDFormReadOnly({
    Key? key,
    required this.labelText,
    required this.initialValue,
    this.maxLines,
  }) : super(key: key);

  @override
  State<HDFormReadOnly> createState() => _HDFormReadOnlyState();
}

class _HDFormReadOnlyState extends State<HDFormReadOnly> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      initialValue: widget.initialValue,
      maxLines: widget.maxLines ?? 1,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontFamily: 'Red Hat Display',
          color: HDColor().colorDefault(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: HDColor().colorDefault(), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: HDColor().colorDefault(), width: 1.0),
        ),
      ),
    );
  }
}
