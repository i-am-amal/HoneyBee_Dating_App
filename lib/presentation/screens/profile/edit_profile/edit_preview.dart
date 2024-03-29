import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/application/update_account_page/update_account_page_bloc.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';
import 'package:honeybee/presentation/screens/bottom_navigation/bottom_navbar.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EditPreviewAccount extends StatelessWidget {
  const EditPreviewAccount({
    super.key,
    required this.editProfileDetails,
  });

  final EditProfileModel editProfileDetails;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String age = calculateAge(editProfileDetails.birthday!).toString();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  SizedBox(width: width * 0.02),
                  BorderlineButton(
                      icon: Icons.arrow_back_ios_new,
                      onpressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(width: width * 0.09),
                  const CustomText(
                    text: 'Edit Preview Account',
                    fontFamily: CustomFont.headTextFont,
                    fontsize: 18,
                    letterspacing: 1,
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
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
                child: editProfileDetails.profilePic != null
                    ? editProfileDetails.profilePic!.path.startsWith('http')
                        ? Image.network(editProfileDetails.profilePic!.path,
                            fit: BoxFit.cover)
                        : Image.file(editProfileDetails.profilePic!,
                            fit: BoxFit.cover)
                    : const Center(child: Text('No profile image available')),
              ),
              SizedBox(
                width: width * 0.99,
                child: Column(
                  children: [
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        CustomText(
                          text: '${editProfileDetails.fullName}, $age',
                          fontFamily: CustomFont.headTextFont,
                          fontsize: 20,
                          fontWeight: FontWeight.bold,
                          letterspacing: 1,
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.025),
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        CustomText(
                          text: editProfileDetails.location,
                          fontFamily: CustomFont.headTextFont,
                          fontsize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      children: [
                        SizedBox(width: width * 0.1),
                        Flexible(
                          child: CustomText(
                            text: editProfileDetails.bio,
                            fontFamily: CustomFont.headTextFont,
                            fontsize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                            icon: FontAwesomeIcons.person,
                            label: editProfileDetails.gender ?? 'NA'),
                        ChoiceButton(
                            icon: FontAwesomeIcons.personPraying,
                            label: editProfileDetails.faith ?? 'NA'),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    ChoiceButton(
                        icon: FontAwesomeIcons.heart,
                        label: editProfileDetails.relationshipStatus ?? 'NA'),
                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                            icon: FontAwesomeIcons.smoking,
                            label: editProfileDetails.smoking ?? 'NA'),
                        ChoiceButton(
                            icon: FontAwesomeIcons.wineGlass,
                            label: editProfileDetails.drinking ?? 'NA'),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                  offset: const Offset(0, 3)),
                            ]),
                        child: editProfileDetails.coverPic != null
                            ? editProfileDetails.coverPic!.path.startsWith(
                                    'http') // Assuming URLs start with 'http'
                                ? Image.network(
                                    editProfileDetails.coverPic!.path,
                                    fit: BoxFit.cover)
                                : Image.file(
                                    File(editProfileDetails.coverPic!.path),
                                    fit: BoxFit.cover)
                            : const Center(
                                child: Text('No cover image available'),
                              ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
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
                            child: editProfileDetails.image0 != null
                                ? editProfileDetails.image0!.path
                                        .startsWith('http')
                                    ? Image.network(
                                        editProfileDetails.image0!.path,
                                        fit: BoxFit.cover)
                                    : Image.file(
                                        File(editProfileDetails.image0!.path),
                                        fit: BoxFit.cover)
                                : const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        '   Optional: Add a picture',
                                      ),
                                    ),
                                  ),
                          ),
                          Container(
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
                            child: editProfileDetails.image1 != null
                                ? editProfileDetails.image1!.path.startsWith(
                                        'http') // Assuming URLs start with 'http'
                                    ? Image.network(
                                        editProfileDetails.image1!.path,
                                        fit: BoxFit.cover)
                                    : Image.file(
                                        File(editProfileDetails.image1!.path),
                                        fit: BoxFit.cover)
                                : const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        '   Optional: Add a picture',
                                      ),
                                    ),
                                  ),
                          ),
                          Container(
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
                            child: editProfileDetails.image2 != null
                                ? editProfileDetails.image2!.path
                                        .startsWith('http')
                                    ? Image.network(
                                        editProfileDetails.image2!.path,
                                        fit: BoxFit.cover)
                                    : Image.file(
                                        File(editProfileDetails.image2!.path),
                                        fit: BoxFit.cover)
                                : const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        '   Optional: Add a picture',
                                      ),
                                    ),
                                  ),
                          ),
                        ]),
                    SizedBox(height: height * 0.05),
                    BlocBuilder<UpdateAccountPageBloc, UpdateAccountPageState>(
                        builder: (context, state) {
                      if (state.isLoading!) {
                        return LoadingAnimationWidget.horizontalRotatingDots(
                          color: Colors.purple,
                          size: 60,
                        );
                      } else if (state.navigationState == true) {
                        WidgetsBinding.instance
                            .addPostFrameCallback((timeStamp) {
                          getTokenFromPrefs().then((token) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Row(
                                  children: [
                                    Icon(Icons.check_circle_outline,
                                        color: Colors.white),
                                    SizedBox(width: 15),
                                    Flexible(
                                      child: Text(
                                        'Profile Details Updated...',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                duration: const Duration(seconds: 5),
                                backgroundColor:
                                    const Color.fromARGB(234, 92, 16, 105),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            );

                            if (token != null) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavbar(
                                    token: token,
                                  ),
                                ),
                                (route) => false,
                              );
                            } else {
                              return const Center(
                                child: Text(
                                    'There is an issue with the user id please login again'),
                              );
                            }
                          });
                        });
                      } else {
                        return MainCustomButton(
                          customtext: 'Update Account',
                          height: height * 0.015,
                          width: width * 0.2,
                          txtcolor: CustomColors.kWhiteTextColor,
                          onpressed: () {
                            BlocProvider.of<UpdateAccountPageBloc>(context).add(
                              UpdateAccountPageEvent.updateAccount(
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
                            );
                          },
                        );
                      }
                      return const SizedBox();
                    }),
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

  int calculateAge(String birthday) {
    DateFormat formatter = DateFormat('dd/MM/yyyy');
    DateTime birthDate = formatter.parse(birthday);
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;

    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }

    return age;
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
      onPressed: () {
        return;
      },
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
