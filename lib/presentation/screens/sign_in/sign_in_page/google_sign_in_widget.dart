import 'package:flutter/material.dart';
import '../../../widgets/constants/colors.dart';

GestureDetector googleSignInWidget(double height, double width) {
  return GestureDetector(
    child: Container(
      height: height * 0.07,
      width: width * .15,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/google logo.png'),
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: CustomColors.kRedButtonColor,
          width: 2.0,
        ),
      ),
    ),
  );
}
