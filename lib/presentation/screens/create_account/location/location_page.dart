import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/create_account/profile_images/profile_images.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController locationTextController = TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              text: 'Location',
              letterspacing: 1.5,
              fontFamily: CustomFont.headTextFont,
              fontsize: 17,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFormFiled(
              icon: Icons.location_on,
              editController: locationTextController,
              keyboardType: TextInputType.streetAddress,
              
            ),
            SizedBox(
              height: height * 0.04,
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
                    builder: (context) => const ProfileImages(
                      image: 'assets/images/profile.jpg',
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
