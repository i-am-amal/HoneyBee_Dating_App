import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

GestureDetector googleSignInWidget(
    double height, double width, BuildContext context) {
  return GestureDetector(
    onTap: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.build, color: Colors.white),
              SizedBox(width: 15),
              Flexible(
                child: Text(
                  '🔍 Oops! Google Sign-In is currently under construction. 🚧...',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          duration: const Duration(seconds: 5),
          backgroundColor: const Color.fromARGB(234, 92, 16, 105),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
    },
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
