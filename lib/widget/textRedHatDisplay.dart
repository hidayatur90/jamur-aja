import 'package:flutter/cupertino.dart';

class HDRedHatDisplay extends StatelessWidget {
  final String text;
  final double fontSize;
  const HDRedHatDisplay({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Red Hat Display',
      ),
    );
  }
}
