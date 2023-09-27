import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/core/routes/navigation_functions.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/screens/sign_in/otp_authentication_page/otp_authentication_page.dart';
import 'package:honeybee/presentation/screens/sign_in/phone_authentication_page/phone_number_input.dart.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

import '../../../../application/bloc/phone_number_auth_page/phone_number_auth_page_bloc.dart';

class PhoneAuthenticationPage extends StatelessWidget {
  const PhoneAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocListener<PhoneNumberAuthPageBloc, PhoneNumberAuthPageState>(
      listener: (context, state) {
        if (state.isPhoneNumberVerified ?? false) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const OtpAuthenticationPage()),
          );

          // CustomNavigator().push(context, const OtpAu854thenticationPage());
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: height * 0.07,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * .02,
                  ),
                  BorderlineButton(
                      icon: Icons.arrow_back_ios_new,
                      onpressed: () {
                        Navigator.pop(context);
                      }),
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
                height: height * 0.04,
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
                height: height * 0.06,
              ),
              const PhoneNumberInput(),
              SizedBox(
                height: height * 0.06,
              ),
              MainCustomButton(
                customtext: "Continue",
                txtcolor: CustomColors.kWhiteTextColor,
                fontFamily: CustomFont.textFont,
                letterspacing: 1,
                height: height * 0.015,
                width: width * 0.25,
                onpressed: () {
                  BlocProvider.of<PhoneNumberAuthPageBloc>(context)
                      .add(const PhoneNumberAuthPageEvent.phoneNumberLogin());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
