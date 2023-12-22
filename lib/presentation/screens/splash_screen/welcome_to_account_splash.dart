import 'package:flutter/material.dart';
import 'package:honeybee/core/routes/navigation_functions.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_main_page.dart';
import 'package:honeybee/presentation/screens/discover/discover_page.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';

class WelcomeAccountScreenSplash extends StatefulWidget {
  const WelcomeAccountScreenSplash({super.key});

  @override
  State<WelcomeAccountScreenSplash> createState() =>
      _WelcomeScreenCreateAnimationState();
}

class _WelcomeScreenCreateAnimationState
    extends State<WelcomeAccountScreenSplash> {
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
    welcomeSplashFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              curve: Curves.decelerate,
              opacity: _opacity,
              duration: const Duration(seconds: 1),
              child: const Text(
                ' HoneyBee',
                style: TextStyle(
                  letterSpacing: 2,
                  fontFamily: CustomFont.logoFont,
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
                  fontFamily: CustomFont.headTextFont,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  welcomeSplashFunction() {
    // Future.delayed(const Duration(seconds: 5)).then((value) {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (context) => BasicInfoMainPage(),
    //     ),
    //   );
    // });

    CustomNavigator().push(context, BasicInfoMainPage());
        // CustomNavigator().push(context, DiscoverPage());




  }
}
