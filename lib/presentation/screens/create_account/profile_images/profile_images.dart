import 'dart:io';

import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class ProfileImages extends StatelessWidget {
  const ProfileImages(
      {super.key,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.birthday,
      required this.profileImage,
      required this.location});

  final String fullName;
  final String location;
  final String email;
  final String phoneNumber;
  final String birthday;
  final File profileImage;

  @override
  Widget build(BuildContext context) {

    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String instructions = '''Add atleast two picture to continue. 
Avoid Blurry Photos. 
Try to upload image within 2 MB size. 
Stay clear of inappropriate content''';

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

                    // child: image != null
                    //     ? Image.asset(
                    //         image!,
                    //         fit: BoxFit.cover,
                    //       )
                    //     :
                    //     const Center(
                    //         child: Text(
                    //           'No Image Available',
                    //           style: TextStyle(color: Colors.white),
                    //         ),
                    //       ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(
                        width: width * 0.5,
                        text: instructions,
                        textalign: TextAlign.start,
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

                // child: image != null
                //     ? Image.asset(
                //         image!,
                //         fit: BoxFit.cover,
                //       )
                //     : const Center(
                //         child: Text(
                //           'No Image Available',
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(height: height, width: width, image: profileImage),
                  CustomContainer(height: height, width: width, image: profileImage),
                  CustomContainer(height: height, width: width, image: profileImage),
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
                      builder: (context) => const BasicInfoLastPage(






                      ),
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
  final File? image;

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

        // child: image != null
        //     ? Image.asset(
        //         image!,
        //         fit: BoxFit.cover,
        //       )
        //     : const Center(
        //         child: Text(
        //           'No Image Available',
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       ),

        child: image != null
            ? Image.file(image!, fit: BoxFit.cover)
            : Image.asset('assets/images/profile.jpg'),
      ),
    );
  }
}
