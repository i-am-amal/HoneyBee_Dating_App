import 'package:flutter/material.dart';
import '../../widgets/logo_widget/logo_widget.dart';

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
          child: LogoWidget(),
        ),
      ),
    );
  }
}


