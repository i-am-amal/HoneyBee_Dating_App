import 'package:flutter/material.dart';
import '../../../widgets/constants/colors.dart';
import '../../../widgets/fonts/fonts.dart';
import '../../../widgets/text_widgets/custom_text.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomText(
          text: 'Terms of use',
          textColor: CustomColors.kHeadTextOnboardingColor,
          fontWeight: FontWeight.bold,
          fontFamily: CustomFont.headTextFont,
          letterspacing: 1,
        ),
        CustomText(
          text: 'Privacy Policy',
          textColor: CustomColors.kHeadTextOnboardingColor,
          fontWeight: FontWeight.bold,
          fontFamily: CustomFont.headTextFont,
          letterspacing: 1,
        )
      ],
    );
  }
}
