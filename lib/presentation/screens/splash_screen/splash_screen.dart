import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';
import 'package:honeybee/presentation/screens/bottom_navigation/bottom_navbar.dart';
import 'package:honeybee/presentation/screens/onboarding/onboarding.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/logo_widget/logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenCreateAnimationState();
}

class _SplashScreenCreateAnimationState extends State<SplashScreen> {
  double _opacity = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          _opacity = 1.0;
        });
      },
    );
    splashScreenFunctions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.easeInQuad,
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: const LogoWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: const Text(
                'Connecting Hearts, Creating Memories',
                style: TextStyle(
                  fontFamily: CustomFont.logoFont,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  splashScreenFunctions() async {
    String? token = await getTokenFromPrefs();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => const SignInPage(),
      //   ),
      // );
      if (token != null) {
        log('-----token on splash screen $token');

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => BottomNavbar(token: token),
          ),
        );
      } else {
        log('--token on splash screen ${token.toString()} ');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Onboarding(),
          ),
        );
      }
    });
  }
}



// have to give entire pemission on the splash screen