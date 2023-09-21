import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile_images.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class EditLocationPage extends StatelessWidget {
  const EditLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          SizedBox(
            height: height * 0.5,
            width: double.infinity,
            child: Image.asset('assets/images/location1.jpg'),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const CustomText(
            text: 'Current Location',
            fontFamily: CustomFont.headTextFont,
            fontsize: 17,
          ),
          SizedBox(
            height: height * 0.08,
          ),
          MainCustomButton(
            customtext: "Continue",
            height: height * 0.02,
            width: width * 0.25,
            txtcolor: CustomColors.kWhiteTextColor,
            fontWeight: FontWeight.bold,
            letterspacing: 1,
            fontsize: 15,
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EditProfileImages()),
              );
            },
          )
        ],
      ),
    );
  }
}
