import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/privacy_policy_widget.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_up_drawer_widget.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_up_widget.dart';
import 'package:honeybee/presentation/widgets/logo_widget/logo_widget.dart';
import 'google_sign_in_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.20,
            ),
            const LogoWidget(),
            SizedBox(
              height: height * 0.05,
            ),
            SignUpWidget(height: height, width: width),
            signUpDrawerWidget(width),
            SizedBox(
              height: height * 0.06,
            ),
            googleSignInWidget(height, width),
            SizedBox(
              height: height * 0.1,
            ),
            const PrivacyPolicyWidget()
          ],
        ),
      ),
    );
  }
}
