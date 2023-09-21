import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:honeybee/presentation/screens/splash_screen/welcome_to_account_splash.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class OtpAuthenticationPage extends StatelessWidget {
  const OtpAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int otpNumber;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            SizedBox(
              width: width * .05,
            ),
            const CustomText(
              text: 'Timer',
              fontFamily: CustomFont.headTextFont,
              fontsize: 30,
              fontWeight: FontWeight.w900,
              letterspacing: 1.5,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            CustomText(
              width: width * 0.9,
              text: "Type the verification code we've sent you ",
              fontFamily: CustomFont.headTextFont,
              fontsize: 20,
              fontWeight: FontWeight.w500,
              letterspacing: 1,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            PinCodeFields(
              length: 6,
              fieldBorderStyle: FieldBorderStyle.square,
              fieldHeight: 60,
              borderWidth: 1.0,
              activeBorderColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontFamily: CustomFont.textFont,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
              keyboardType: TextInputType.number,
              onComplete: (value) {
                otpNumber = int.parse(value);
                print(otpNumber);
              },
            ),
            SizedBox(
              height: height * 0.05,
            ),
            MainCustomButton(
              customtext: "Continue",
              txtcolor: CustomColors.kWhiteTextColor,
              fontFamily: CustomFont.textFont,
              letterspacing: 1,
              height: height * 0.018,
              width: width * 0.25,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WelcomeAccountScreenSplash()),
                );
              },
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextButton(
              onPressed: () {},
              child: const CustomText(
                text: 'Resend Otp',
                fontFamily: CustomFont.headTextFont,
                fontsize: 15,
                fontWeight: FontWeight.w900,
                letterspacing: 1.5,
                textColor: Colors.black87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
