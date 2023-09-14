import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class ProfileImages extends StatelessWidget {
  const ProfileImages({super.key, this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.07,
                ),
                const CustomText(
                  text: 'Its all about presentation',
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 18,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.25,
                  width: width * 0.35,
                  color: Colors.grey,
                  child: image != null
                      ? Image.asset(image!)
                      : const Center(
                          child: Text(
                            'No Image Available',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomText(
                      text: ' Add atleast two picture to continue',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const CustomText(
                      text: 'Avoid Blurry Photos',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const CustomText(
                      text: 'Try to upload image within 2 MB size',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const CustomText(
                      text: 'Stay clear of inappropriate content',
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.25,
              width: width * 0.99,
              color: Colors.grey,
              child: image != null
                  ? Image.asset(image!)
                  : const Center(
                      child: Text(
                        'No Image Available',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(height: height, width: width),
                CustomContainer(height: height, width: width),
                CustomContainer(height: height, width: width),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            MainCustomButton(
              customtext: 'Continue',
              width: width * 0.2,
              txtcolor: CustomColors.kWhiteTextColor,
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.height, required this.width, this.image});

  final double height;
  final double width;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height * 0.25,
        width: width * 0.3,
        color: Colors.grey,
        child: image != null
            ? Image.asset(image!)
            : const Center(
                child: Text(
                  'No Image Available',
                  style: TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
