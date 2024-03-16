import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

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
      fontWeight: FontWeight.w600,
      fontFamily: CustomFont.logoFont,
      letterspacing: 4,
    );
  }
}
