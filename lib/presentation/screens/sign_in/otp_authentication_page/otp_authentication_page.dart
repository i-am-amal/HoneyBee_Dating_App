import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:honeybee/application/preview_account_page/preview_account_page_bloc.dart';
import 'package:honeybee/infrastructure/services/socket_services.dart';
import 'package:honeybee/presentation/screens/bottom_navigation/bottom_navbar.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_main_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import '../../../../application/otp_number_auth_page/otp_number_auth_page_bloc.dart';
import '../../../../core/routes/navigation_functions.dart';
import '../../../../infrastructure/shared_preferences/shared_prefs.dart';

class OtpAuthenticationPage extends StatelessWidget {
  const OtpAuthenticationPage(
      {super.key, required this.phoneNumber, required this.countryCode});

  final String phoneNumber;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    BlocProvider.of<OtpNumberAuthPageBloc>(context).add(
        OtpNumberAuthPageEvent.initializePage(
            phoneNumber: phoneNumber, countryCode: countryCode));

    return BlocListener<OtpNumberAuthPageBloc, OtpNumberAuthPageState>(
      listener: (context, state) async {
        handleState(state, context);
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                SizedBox(
                  width: width * .05,
                ),
                BlocBuilder<OtpNumberAuthPageBloc, OtpNumberAuthPageState>(
                  builder: (context, state) {
                    if (state.timer == 0) {
                      return const Text('Resend Otp!');
                    } else {
                      return Text('Time remaining: ${state.timer} seconds');
                    }
                  },
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
                    BlocProvider.of<OtpNumberAuthPageBloc>(context)
                        .add(OtpNumberAuthPageEvent.setOtp(otp: value));
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
                    BlocProvider.of<OtpNumberAuthPageBloc>(context)
                        .add(const OtpNumberAuthPageEvent.otpLogin());
                  },
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    log('Re-send button');
                  },
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
        ),
      ),
    );
  }
}

void handleState(OtpNumberAuthPageState state, BuildContext context) async {
  if (state.isOtpVerified ?? false) {
    if (state.redirectPage == '/Discover') {
      log("---------------Token is ${state.token.toString()}------------------------");
      log("---------------Redirected to${state.redirectPage}------------------------");

      await saveTokenToPrefs(state.token.toString());

      BlocProvider.of<PreviewAccountPageBloc>(context)
          .add(const PreviewAccountPageEvent.fetchAccountData());

      Future.microtask(() {
        CustomNavigator().push(context, BottomNavbar(token: state.token!));
      });
    } else if (state.redirectPage == '/createAccount') {
      log("---------------Redirected to${state.redirectPage}------------------------");

      Future.microtask(() {
        CustomNavigator().push(
            context,
            BasicInfoMainPage(
              formattedPhoneNumber: state.formattedPhoneNumber,
            ));
       
      });
    }
  } else {
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text('Please enter a valid OTP'),
    //   ),
    // );
  }
}
