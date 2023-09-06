import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final double? fontsize;
  final String? fontFamily;
  final FontStyle? fontstyle;
  final Color? textColor;
  final TextDecoration? textDecoration;

  const CustomText(
      {super.key,
      this.text,
      this.fontWeight,
      this.fontsize,
      this.fontFamily,
      this.textColor,
      this.fontstyle,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
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
