import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/sign_in/phone_authentication_page/phone_authentication_page.dart';
import '../../../widgets/button_widgets/main_custom_button.dart';
import '../../../widgets/constants/colors.dart';
import '../../../widgets/fonts/fonts.dart';
import '../../../widgets/text_widgets/custom_text.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomText(
          text: "Sign up to continue",
          fontsize: 17,
          fontFamily: CustomFont.textFont,
          fontWeight: FontWeight.bold,
          letterspacing: 1.2,
        ),
        SizedBox(
          height: height * 0.08,
        ),
        MainCustomButton(
          customtext: "Continue with Phone Number",
          txtcolor: CustomColors.kWhiteTextColor,
          fontWeight: FontWeight.bold,
          letterspacing: 1,
          height: height * 0.02,
          width: width * 0.12,
          onpressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PhoneAuthenticationPage()),
            );
          },
        ),
        SizedBox(
          height: height * 0.1,
        ),
      ],
    );
  }
}
