import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/sign_in/phone_authentication_page/phone_authentication_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

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
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    PhoneAuthenticationPage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInOutQuart;
                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                      position: offsetAnimation, child: child);
                },
              ),
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
