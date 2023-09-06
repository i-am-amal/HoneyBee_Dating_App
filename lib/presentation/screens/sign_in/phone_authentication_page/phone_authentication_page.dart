import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class PhoneAuthenticationPage extends StatelessWidget {
  const PhoneAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * .05,
                ),
                const CustomText(
                  text: 'My Mobile',
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 30,
                  fontWeight: FontWeight.w900,
                  letterspacing: 1.5,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            CustomText(
              width: width * 0.9,
              text:
                  'Please enter your valid phone number. We will send you a 6-digit code to verify your account. ',
              fontFamily: CustomFont.headTextFont,
              fontWeight: FontWeight.w600,
              letterspacing: 1,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const PhoneAuthenticationPage(),
            SizedBox(
              height: height * 0.05,
            ),
            MainCustomButton(
              customtext: "Continue",
              txtcolor: CustomColors.kWhiteTextColor,
              fontFamily: CustomFont.textFont,
              letterspacing: 1,
              height: height * 0.015,
              width: width * 0.25,
              onpressed: () {
                print("continue button inside phone authentication page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
