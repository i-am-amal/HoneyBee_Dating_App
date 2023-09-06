import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontsize;
  final String? fontFamily;
  final FontStyle? fontstyle;
  final Color? textColor;
  final TextDecoration? textDecoration;

  const HeadingText(
      {super.key,
      required this.text,
      this.fontWeight,
      this.fontsize,
      this.fontFamily,
      this.fontstyle,
      this.textColor,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontsize,
        fontFamily: fontFamily,
        fontStyle: fontstyle,
        color: textColor,
        decoration: textDecoration,
      ),
    );
  }
}
