import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final double? fontsize;
  final String? fontFamily;
  final FontStyle? fontstyle;
  final Color? textColor;
  final TextDecoration? textDecoration;
  final double? width;
  final double? height;
  final double? letterspacing;

  const CustomText({
    super.key,
    this.text,
    this.height,
    this.width,
    this.fontWeight,
    this.fontsize,
    this.fontFamily,
    this.textColor,
    this.fontstyle,
    this.textDecoration,
    this.letterspacing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Text(
        text ?? '',
        style: TextStyle(
          letterSpacing: letterspacing,
          fontWeight: fontWeight,
          fontSize: fontsize,
          fontFamily: fontFamily,
          fontStyle: fontstyle,
          color: textColor,
          decoration: textDecoration,
        ),
      ),
    );
  }
}
