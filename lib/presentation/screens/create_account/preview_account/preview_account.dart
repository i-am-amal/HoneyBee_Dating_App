import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/presentation/screens/bottom_navigation/bottom_navbar.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

// ignore: must_be_immutable
class PreviewAccount extends StatelessWidget {
  PreviewAccount(
      {super.key,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.birthday,
      required this.coverImage,
      required this.location,
      required this.profileImage,
      required this.selectedOptions,
      this.image1,
      this.image2,
      this.image3});

  final String fullName;
  final String location;
  final String email;
  final String phoneNumber;
  final String birthday;
  final File profileImage;
  final File? coverImage;
  final SelectedOptions selectedOptions;
  File? image1;
  File? image2;
  File? image3;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
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
                      }),
                  SizedBox(
                    width: width * 0.09,
                  ),
                  const CustomText(
                    text: 'Preview Account',
                    fontFamily: CustomFont.headTextFont,
                    fontsize: 18,
                    letterspacing: 1,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.4,
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

                // child: Image.asset(
                //   'assets/images/profile.jpg',
                //   fit: BoxFit.cover,
                // ),
                child: Image.file(profileImage),
              ),
              SizedBox(
                width: width * 0.99,
                // color: Colors.grey,
                child: Column(
                  children: [
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.1,
                        ),
                         CustomText(
                          text: '$fullName, age',
                          fontFamily: CustomFont.headTextFont,
                          fontsize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.1,
                        ),
                         CustomText(
                          text: location,
                          fontFamily: CustomFont.headTextFont,
                          fontsize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.1,
                        ),
                        const Flexible(
                          child: CustomText(
                            text:
                                'This is a dummy text that showing the bio of the user',
                            fontFamily: CustomFont.headTextFont,
                            fontsize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                            icon: FontAwesomeIcons.person, label: 'Gender'),
                        ChoiceButton(
                            icon: FontAwesomeIcons.personPraying,
                            label: 'Faith'),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    const ChoiceButton(
                        icon: FontAwesomeIcons.heart,
                        label: 'Relationship status'),
                    SizedBox(height: height * 0.03),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                            icon: FontAwesomeIcons.smoking, label: 'Smoking'),
                        ChoiceButton(
                            icon: FontAwesomeIcons.wineGlass,
                            label: 'Drinking'),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    MainCustomButton(
                      customtext: 'Create Account',
                      height: height * 0.015,
                      width: width * 0.2,
                      txtcolor: CustomColors.kWhiteTextColor,
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavbar()),
                        );
                      },
                    ),
                    SizedBox(height: height * 0.05),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    this.icon,
    required this.label,
    super.key,
  });

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
