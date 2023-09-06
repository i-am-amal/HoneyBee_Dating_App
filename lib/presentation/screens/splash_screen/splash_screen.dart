import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: const Center(
          child: CustomText(
            text: 'HoneyBee',
            textColor: Colors.black,
            fontsize: 55,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montez-Regular',
          ),
        ),
      ),
    );
  }
}
