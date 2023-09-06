import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/onboarding_widgets/image_widget.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/text_widgets/heading_text.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const ImageWidget(),
            const SizedBox(
              height: 50,
            ),
            const HeadingText(
                text: "Algorithm",
                fontWeight: FontWeight.w900,
                fontsize: 25,
                fontFamily: CustomFont.headTextFont,
                textColor: CustomColors.kHeadTextOnboardingColor),
            const SizedBox(
              height: 20,
            ),
            const CustomText(
              height: 50,
              width: 250,
              text:
                  "Users going through a vetting process to ensure you never match with bots.",
              textColor: CustomColors.kBlackTextColor,
              fontWeight: FontWeight.normal,
              fontFamily: CustomFont.textFont,
              fontsize: 14,
            ),
            const SizedBox(
              height: 70,
            ),
            MainCustomButton(
              width: 114,
              height: 14,
              customtext: "Continue",
              txtcolor: CustomColors.kWhiteTextColor,
              fontWeight: FontWeight.bold,
              fontsize: 15,
              letterspacing: 1.5,
              fontFamily: CustomFont.headTextFont,
              onpressed: () {},
            ),
            const SizedBox(
              height: 35,
            ),
            const CustomText(
              text: 'Already have an account? Sign-In',
              fontWeight: FontWeight.w500,
              textColor: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
