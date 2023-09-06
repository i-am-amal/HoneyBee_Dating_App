 import 'package:flutter/material.dart';

import '../../../widgets/fonts/fonts.dart';
import '../../../widgets/text_widgets/custom_text.dart';

Row signUpDrawerWidget(double width) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: width * 0.33,
          child: const Divider(
            thickness: 1,
            height: 15,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .02),
          child: const CustomText(
            text: "or sign up with",
            textColor: Colors.black54,
            fontWeight: FontWeight.w600,
            fontFamily: CustomFont.headTextFont,
            letterspacing: 1,
          ),
        ),
        SizedBox(
          width: width * 0.33,
          child: const Divider(
            thickness: 1,
            height: 15,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
