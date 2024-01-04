import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/location_auth_page/location_auth_page_bloc.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile_images.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EditLocationPage extends StatelessWidget {
  const EditLocationPage(
      {super.key,
      required this.age,
      required this.bio,
      required this.birthday,
      required this.coverPic,
      required this.drinking,
      required this.email,
      required this.faith,
      required this.fullName,
      required this.gender,
      required this.location,
      required this.phone,
      required this.preference,
      required this.profilePic,
      required this.relationshipStatus,
      required this.smoking,
      this.image0,
      this.image1,
      this.image2});

  final File profilePic;
  final File coverPic;
  final String preference;
  final String phone;
  final String age;
  final String bio;
  final String birthday;
  final String drinking;
  final String email;
  final String faith;
  final String fullName;
  final String gender;
  final File? image0;
  final File? image1;
  final File? image2;
  final String location;
  final String relationshipStatus;
  final String smoking;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<LocationAuthPageBloc>(context)
          .add(const LocationAuthPageEvent.fetchLocationName());
    });

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // BlocBuilder<LocationAuthPageBloc, LocationAuthPageState>(
    //     builder: (context, state) {

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<LocationAuthPageBloc, LocationAuthPageState>(
          builder: (context, state) {
            if (state.isLoading!) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.4,
                    ),
                    // const CircularProgressIndicator(),

                    LoadingAnimationWidget.halfTriangleDot(
                      color: CustomColors.kRedButtonColor,
                      size: 100,
                    ),

                    SizedBox(
                      height: height * 0.03,
                    ),
                    const CustomText(
                      text: 'Fetching location..please wait...',
                      letterspacing: 1.5,
                      fontFamily: CustomFont.headTextFont,
                      fontsize: 17,
                    ),
                  ],
                ),
              );
            }
            if (state.locationName != null) {
              return Column(
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
                  CustomText(
                    text: state.locationName!,
                    letterspacing: 1.5,
                    fontFamily: CustomFont.headTextFont,
                    fontsize: 17,
                  ),
                  SizedBox(
                    height: height * 0.06,
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
                      log(profilePic.toString());
                      log(coverPic.toString());
                      if (state.locationName != null) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfileImages(
                              fullName: fullName,
                              email: email,
                              birthday: birthday,
                              location: state.locationName!,
                              age: age,
                              bio: bio,
                              drinking: drinking,
                              faith: faith,
                              gender: gender,
                              phone: phone,
                              preference: preference,
                              profilePic: profilePic,
                              relationshipStatus: relationshipStatus,
                              smoking: smoking,
                              coverPic: coverPic,
                              image0: image0,
                              image1: image1,
                              image2: image2,
                            ),
                          ),
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              );
            } else if (state.errorMessage != null) {
              return Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Image.asset('assets/images/location1.jpg'),
                  CustomText(
                    text: state.errorMessage,
                    letterspacing: 1.5,
                    fontFamily: CustomFont.headTextFont,
                    fontsize: 17,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  MainCustomButton(
                    customtext: "Retry",
                    height: height * 0.02,
                    width: width * 0.25,
                    txtcolor: CustomColors.kWhiteTextColor,
                    fontWeight: FontWeight.bold,
                    letterspacing: 1,
                    fontsize: 15,
                    onpressed: () {
                      BlocProvider.of<LocationAuthPageBloc>(context)
                          .add(const LocationAuthPageEvent.fetchLocationName());
                    },
                  ),
                ],
              );
            } else {
              return const Text('Something is happened wrong ');
            }
          },
        ),
      ),
    );

    // });
  }
}
