import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/sign_in/otp_number_auth_page/otp_number_auth_page_bloc.dart';
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

  late CountryCode? countryCode;
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
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.07),
                Row(
                  children: [
                    SizedBox(width: width * .02),
                    BorderlineButton(
                        icon: Icons.arrow_back_ios_new,
                        onpressed: () {
                          Navigator.pop(context);
                        }),
                    SizedBox(width: width * .05),
                    const CustomText(
                      text: 'My Mobile',
                      fontFamily: CustomFont.headTextFont,
                      fontsize: 30,
                      fontWeight: FontWeight.w900,
                      letterspacing: 1.5,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Container(
                  height: height * 0.3,
                  width: width * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Access_account.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.08),
                CustomText(
                  width: width * 0.85,
                  text:
                      'Please enter your valid phone number. We will send you a 6-digit code to verify your account. ',
                  fontFamily: CustomFont.headTextFont,
                  fontWeight: FontWeight.w600,
                  letterspacing: 1,
                ),
                SizedBox(height: height * 0.05),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CountryCodePicker(
                            onChanged: (code) {
                              countryCode = code;
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
                            height: height * 0.08,
                            width: width * 0.6,
                            child: TextFormField(
                              onChanged: (value) {
                                BlocProvider.of<PhoneNumberAuthPageBloc>(
                                        context)
                                    .add(
                                        PhoneNumberAuthPageEvent.setPhoneNumber(
                                            phoneNumber: value));
                              },
                              controller: phoneNumberController,
                              keyboardType: TextInputType.phone,
                              maxLength: 10,
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                labelText: 'Phone Number',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.08),
                MainCustomButton(
                  customtext: "Send Code",
                  txtcolor: CustomColors.kWhiteTextColor,
                  fontFamily: CustomFont.textFont,
                  letterspacing: 1,
                  height: height * 0.015,
                  width: width * 0.25,
                  onpressed: () {
                    if (phoneNumberController.text.length != 10) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Row(
                            children: [
                              Icon(Icons.error_outline, color: Colors.white),
                              SizedBox(width: 15),
                              Flexible(
                                child: Text(
                                  ' Oops! Please enter a valid phone number ...',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          duration: const Duration(seconds: 4),
                          backgroundColor:
                              const Color.fromARGB(234, 192, 30, 30),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      );
                    }
                    FocusScope.of(context).unfocus();
                    BlocProvider.of<PhoneNumberAuthPageBloc>(context).add(
                      PhoneNumberAuthPageEvent.phoneNumberLogin(
                        phoneNumber: phoneNumberController.text,
                        countryCode: countryCode.toString(),
                      ),
                    );
                    BlocProvider.of<OtpNumberAuthPageBloc>(context).add(
                        OtpNumberAuthPageEvent.initializePage(
                            phoneNumber: phoneNumberController.text,
                            countryCode: countryCode.toString()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
