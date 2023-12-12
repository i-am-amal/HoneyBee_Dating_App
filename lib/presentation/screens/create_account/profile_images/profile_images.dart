import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

// ignore: must_be_immutable
class ProfileImages extends StatelessWidget {
  ProfileImages({
    super.key,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.birthday,
    required this.location,
    required this.profileImage,
    // this.profileImage,
  });

  final String fullName;
  final String location;
  final String email;
  final String phoneNumber;
  final String birthday;
  final File profileImage;
  File? coverImage;
  File? image1;
  File? image2;
  File? image3;

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
          child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
            builder: (context, state) {
              if (state.coverProfileImage != null) {
                coverImage = File(state.coverProfileImage!.path);
              }
              if (state.pic1 != null) {
                image1 = File(state.pic1!.path);
              }
              if (state.pic2 != null) {
                image2 = File(state.pic2!.path);
              }
              if (state.pic3 != null) {
                image3 = File(state.pic3!.path);
              }
              return Column(
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
                          child: Image.file(profileImage, fit: BoxFit.cover)),
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
                  GestureDetector(
                    child: Container(
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

                      ///--------------->>>>>>>>>>----------------cover image --------->>>>>>>>>>>---------

                      child: state.coverProfileImage != null
                          ? Image.file(File(state.coverProfileImage!.path),
                              fit: BoxFit.cover)
                          : const Center(
                              child: Text('No cover image available')),
                    ),
                    onTap: () {
                      pickImageModalPopUp(
                        context,
                        () {
                          BlocProvider.of<BasicInfoAuthBloc>(context)
                              .add(const BasicInfoAuthEvent.pickCoverImage());
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomContainer(
                          height: height,
                          width: width,
                          image: image1,
                          onTapFunction: () {
                            pickImageModalPopUp(context, () {
                              BlocProvider.of<BasicInfoAuthBloc>(context)
                                  .add(const BasicInfoAuthEvent.pickImage1());
                            });
                          }),
                      CustomContainer(
                          height: height,
                          width: width,
                          image: image2,
                          onTapFunction: () {
                            pickImageModalPopUp(context, () {
                              BlocProvider.of<BasicInfoAuthBloc>(context)
                                  .add(const BasicInfoAuthEvent.pickImage2());
                            });
                          }),
                      CustomContainer(
                          height: height,
                          width: width,
                          image: image3,
                          onTapFunction: () {
                            pickImageModalPopUp(context, () {
                              BlocProvider.of<BasicInfoAuthBloc>(context)
                                  .add(const BasicInfoAuthEvent.pickImage3());
                            });
                          }),
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
                      log("$fullName,$birthday,$coverImage,$email,$location,$phoneNumber,$profileImage,$image1,$image2,$image3");

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BasicInfoLastPage(
                            fullName: fullName,
                            email: email,
                            location: location,
                            birthday: birthday,
                            phoneNumber: phoneNumber,
                            profileImage: profileImage,
                            coverImage: coverImage,
                            image1: image1,
                            image2: image2,
                            image3: image3,
                          ),
                        ),
                      );
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.height,
      required this.width,
      this.image,
      this.onTapFunction});

  final double height;
  final double width;
  final File? image;
  final Function? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // pickImageModalPopUp(context, () {});

        if (onTapFunction != null) {
          onTapFunction!();
        }
      },
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
            ? Image.file(
                image!,
                fit: BoxFit.cover,
              )
            : const Center(
                child: Text(
                  'No Image Available',
                ),
              ),

        // child: image != null
        //     ? Image.file(image!, fit: BoxFit.cover)
        //     : Image.asset('assets/images/profile.jpg'),
      ),
    );
  }
}
