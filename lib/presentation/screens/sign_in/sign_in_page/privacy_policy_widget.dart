import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/policies/privacy.dart';
import 'package:honeybee/presentation/widgets/policies/terms_and_conditions.dart';
import '../../../widgets/constants/colors.dart';
import '../../../widgets/fonts/fonts.dart';
import '../../../widgets/text_widgets/custom_text.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  const PrivacyPolicyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => TermsAndConditions().termsandcondition(context),
          child:const CustomText(
            text: 'Terms of use',
            textColor: CustomColors.kHeadTextOnboardingColor,
            fontWeight: FontWeight.bold,
            fontFamily: CustomFont.headTextFont,
            letterspacing: 1,
          ),
        ),
        GestureDetector(
          onTap: () => Privacy().privacy(context),
          child:const CustomText(
            text: 'Privacy Policy',
            textColor: CustomColors.kHeadTextOnboardingColor,
            fontWeight: FontWeight.bold,
            fontFamily: CustomFont.headTextFont,
            letterspacing: 1,
          ),
        )
      ],
    );
  }
}
