import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  BorderlineButton(
                    icon: Icons.arrow_back_ios_new,
                    onpressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const CustomText(
                    text: 'Its all about presentation',
                    fontFamily: CustomFont.headTextFont,
                    fontsize: 20,
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: image != null
                        ? Image.asset(
                            image!,
                            fit: BoxFit.cover,
                          )
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
                        fontFamily: CustomFont.textFont,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const CustomText(
                        text: 'Avoid Blurry Photos',
                        fontFamily: CustomFont.textFont,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const CustomText(
                        text: 'Try to upload image within 2 MB size',
                        fontFamily: CustomFont.textFont,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const CustomText(
                        text: 'Stay clear of inappropriate content',
                        fontFamily: CustomFont.textFont,
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: image != null
                    ? Image.asset(
                        image!,
                        fit: BoxFit.cover,
                      )
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
                  CustomContainer(height: height, width: width, image: image),
                  CustomContainer(height: height, width: width, image: image),
                  CustomContainer(height: height, width: width, image: image),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              MainCustomButton(
                customtext: 'Continue',
                width: width * 0.2,
                txtcolor: CustomColors.kWhiteTextColor,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BasicInfoLastPage(),
                    ),
                  );
                },
              )
            ],
          ),
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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: image != null
            ? Image.asset(
                image!,
                fit: BoxFit.cover,
              )
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
