import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/location_auth_page/location_auth_page_bloc.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile_images.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EditLocationPage extends StatelessWidget {
  const EditLocationPage({
    required this.editProfileDetails,
    super.key,
  });

  final EditProfileModel editProfileDetails;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      BlocProvider.of<LocationAuthPageBloc>(context)
          .add(const LocationAuthPageEvent.fetchLocationName());
    });

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        // Show an alert dialog
        bool exitProcedure = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit edit profile '),
            content: const Text('Do you want to exit edit profile?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile()),
                  );
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false); // Continue the procedure
                },
                child: const Text(
                  'No',
                ),
              ),
            ],
          ),
        );
        return exitProcedure;
      },
      child: Scaffold(
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
                      height: height * 0.09,
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
                        if (state.locationName != null) {
                          log('''----log on edit location page------
                                age-  ${editProfileDetails.age},
                               bio-   ${editProfileDetails.bio},
                                birthday-  ${editProfileDetails.birthday},
                                 coverpic- ${editProfileDetails.coverPic},
                                 drinking- ${editProfileDetails.drinking},
                                email-  ${editProfileDetails.email},
                                 faith ${editProfileDetails.faith},
                                 name- ${editProfileDetails.fullName},
                                 gender- ${editProfileDetails.gender},
                                 image0- ${editProfileDetails.image0},
                                 image1- ${editProfileDetails.image1},
                                 image2- ${editProfileDetails.image2},
                                 location- ${editProfileDetails.location},
                                 phone- ${editProfileDetails.phone},
                                 preference- ${editProfileDetails.preference},
                                 profilepic- ${editProfileDetails.profilePic}
                                  relationshipStatus- ${editProfileDetails.relationshipStatus} 
                                 smoking-  ${editProfileDetails.smoking}
                                  ''');

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfileImages(
                                editProfileDetails: EditProfileModel(
                                  age: editProfileDetails.age,
                                  bio: editProfileDetails.bio,
                                  birthday: editProfileDetails.birthday,
                                  coverPic: editProfileDetails.coverPic,
                                  drinking: editProfileDetails.drinking,
                                  email: editProfileDetails.email,
                                  faith: editProfileDetails.faith,
                                  fullName: editProfileDetails.fullName,
                                  gender: editProfileDetails.gender,
                                  image0: editProfileDetails.image0,
                                  image1: editProfileDetails.image1,
                                  image2: editProfileDetails.image2,
                                  location: editProfileDetails.location,
                                  phone: editProfileDetails.phone,
                                  preference: editProfileDetails.preference,
                                  profilePic: editProfileDetails.profilePic,
                                  relationshipStatus:
                                      editProfileDetails.relationshipStatus,
                                  smoking: editProfileDetails.smoking,
                                ),
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
                        BlocProvider.of<LocationAuthPageBloc>(context).add(
                            const LocationAuthPageEvent.fetchLocationName());
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
      ),
    );

    // });
  }
}
