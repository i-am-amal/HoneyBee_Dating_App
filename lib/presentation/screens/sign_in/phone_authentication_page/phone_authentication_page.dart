import 'dart:developer';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/sign_in/phone_number_auth_page/phone_number_auth_page_bloc.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/screens/sign_in/otp_authentication_page/otp_authentication_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

// ignore: must_be_immutable
class PhoneAuthenticationPage extends StatelessWidget {
  PhoneAuthenticationPage({super.key});

  CountryCode? countryCode;
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocListener<PhoneNumberAuthPageBloc, PhoneNumberAuthPageState>(
      listener: (context, state) {
        if (state.isPhoneNumberVerified ?? false) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OtpAuthenticationPage(
                phoneNumber: phoneNumberController.text,
                countryCode: countryCode.toString(),
              ),
            ),
          );
        }
        // else {
        //   if (FormValidationServices.phoneNumberValidation(
        //       phoneNumberController.text)) {
        //     ScaffoldMessenger.maybeOf(context)?.showSnackBar(const SnackBar(
        //       content: Text('Please enter a valid phone number '),
        //     ));
        //   }
        // }

        // CustomNavigator().push(context, const OtpAuthenticationPage());
        // }
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

              //-----------------phone number text field section-------------------------//

              Column(
                children: [
                  Row(
                    children: [
                      CountryCodePicker(
                        onChanged: (code) {
                          countryCode = code;
                          log(countryCode.toString());
                        },
                        initialSelection: 'IN',
                        onInit: (value) {
                          countryCode = value;
                        },
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                      SizedBox(
                        height: height * 0.06,
                        width: width * 0.65,
                        child: TextFormField(
                          onChanged: (value) {
                            log(countryCode.toString());

                            BlocProvider.of<PhoneNumberAuthPageBloc>(context)
                                .add(
                              PhoneNumberAuthPageEvent.setPhoneNumber(
                                phoneNumber: value,
                              ),
                            );
                          },
                          controller: phoneNumberController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            labelText: 'Phone Number',
                            // helperText: 'Enter your phone number',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

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
                  BlocProvider.of<PhoneNumberAuthPageBloc>(context).add(
                    PhoneNumberAuthPageEvent.phoneNumberLogin(
                      phoneNumber: phoneNumberController.text,
                      countryCode: countryCode.toString(),
                    ),
                  );
                  log('-----in on pressed-----');
                  log(countryCode.toString());
                  log(phoneNumberController.text);
                  log('-----after onpressed-----');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
