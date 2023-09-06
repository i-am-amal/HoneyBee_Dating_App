import 'package:flutter/material.dart';
import '../fonts/fonts.dart';
import '../text_widgets/custom_text.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomText(
      text: 'HoneyBee',
      textColor: Colors.black,
      fontsize: 60,
      fontWeight: FontWeight.bold,
      fontFamily: CustomFont.logoFont,
      letterspacing: 4,
    );
  }
}