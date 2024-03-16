import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_in_page.dart';
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              const ImageWidget(
                  imagepath:
                      'https://images.pexels.com/photos/935789/pexels-photo-935789.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              SizedBox(
                height: height * 0.1,
              ),
              const HeadingText(
                  text: "Welcome to HoneyBee",
                  fontWeight: FontWeight.w900,
                  fontsize: 25,
                  fontFamily: CustomFont.headTextFont,
                  textColor: CustomColors.kHeadTextOnboardingColor),
              SizedBox(
                height: height * 0.03,
              ),
              CustomText(
                height: height * 0.08,
                width: width * 0.8,
                text:
                    "Spark meaningful connections with your words—beyond just swipes.🍯💖",
                textColor: CustomColors.kBlackTextColor,
                fontWeight: FontWeight.normal,
                fontFamily: CustomFont.textFont,
                fontsize: 14,
              ),
              SizedBox(
                height: height * 0.06,
              ),
              MainCustomButton(
                width: width * 0.25,
                height: height * 0.017,
                customtext: "Let's Buzz...🐝",
                txtcolor: CustomColors.kWhiteTextColor,
                fontWeight: FontWeight.bold,
                fontsize: 15,
                letterspacing: 1.5,
                fontFamily: CustomFont.headTextFont,
                onpressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const SignInPage(),
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
                height: height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
