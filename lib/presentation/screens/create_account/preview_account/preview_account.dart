import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/application/create_account_page/create_account_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/application/preview_account_page/preview_account_page_bloc.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';
import 'package:honeybee/presentation/screens/bottom_navigation/bottom_navbar.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_info_last_page.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_in_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
      required this.bio,
      required this.gender,
      required this.preference,
      this.image1,
      this.image2,
      this.image3});

  final String fullName;
  final String location;
  final String email;
  final String phoneNumber;
  final String birthday;
  final String bio;
  final String gender;
  final String preference;
  final File profileImage;
  final File coverImage;
  final SelectedOptions selectedOptions;
  File? image1;
  File? image2;
  File? image3;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String age = calculateAge(birthday).toString();

    return WillPopScope(
      onWillPop: () async {
        bool exitProcedure = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit account creation'),
            content: const Text('Do you want to exit account creation?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
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
                  child: Image.file(
                    profileImage,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: width * 0.99,
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.05),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.1,
                          ),
                          CustomText(
                            text: '$fullName, $age',
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
                            text: location,
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
                              text: bio,
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
                              icon: FontAwesomeIcons.person, label: gender),
                          ChoiceButton(
                              icon: FontAwesomeIcons.personPraying,
                              label: selectedOptions.faith),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      ChoiceButton(
                          icon: FontAwesomeIcons.heart,
                          label: selectedOptions.relationshipStatus),
                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ChoiceButton(
                              icon: FontAwesomeIcons.smoking,
                              label: selectedOptions.smoking),
                          ChoiceButton(
                              icon: FontAwesomeIcons.wineGlass,
                              label: selectedOptions.drinking),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height * 0.25,
                          width: width * 0.9,
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

                          ///--------------->>>>>>>>>>----------------cover image --------->>>>>>>>>>>---------

                          child: Image.file(
                            coverImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: height * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3)),
                                        ]),
                                    child: image1 != null
                                        ? Image.file(
                                            image1!,
                                            fit: BoxFit.cover,
                                          )
                                        : const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Center(
                                              child: Text('No image Available'),
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(width: width * 0.05),
                                Expanded(
                                  child: Container(
                                    height: height * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3)),
                                        ]),
                                    child: image2 != null
                                        ? Image.file(
                                            image2!,
                                            fit: BoxFit.cover,
                                          )
                                        : const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Center(
                                              child: Text('No image Available'),
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(width: width * 0.05),
                                Expanded(
                                  child: Container(
                                    height: height * 0.2,
                                    // width: width * 0.9,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3)),
                                        ]),
                                    child: image3 != null
                                        ? Image.file(
                                            image3!,
                                            fit: BoxFit.cover,
                                          )
                                        : const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Center(
                                              child: Text('No image Available'),
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      BlocBuilder<CreateAccountBloc, CreateAccountState>(
                          builder: (context, state) {
                        if (state.isLoading!) {
                          return LoadingAnimationWidget.horizontalRotatingDots(
                            color: Colors.purple,
                            size: 60,
                          );
                        } else if (state.navigationState == true) {
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Row(
                                  children: [
                                    Icon(Icons.check_circle_outline,
                                        color: Colors.white),
                                    SizedBox(width: 15),
                                    Flexible(
                                      child: Text(
                                        'Welcome to HoneyBee.. Let the sparks fly with new connections...',
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
                            //----------->>>>>>>>>>----------saving token---------------->>>>>>>>>>>
                            saveTokenToPrefs(state.token!);
                            BlocProvider.of<PreviewAccountPageBloc>(context)
                                .add(const PreviewAccountPageEvent
                                    .fetchAccountData());
                            BlocProvider.of<DiscoverPageBloc>(context).add(
                                const DiscoverPageEvent.fetchDiscoverData());
                            BlocProvider.of<DiscoverPageBloc>(context).add(
                                const DiscoverPageEvent
                                    .likedAndDislikedUsersData());

                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavbar(
                                  token: state.token!,
                                ),
                              ),
                              (route) => false,
                            );
                          });
                        } else {
                          return MainCustomButton(
                            customtext: 'Create Account',
                            height: height * 0.015,
                            width: width * 0.2,
                            txtcolor: CustomColors.kWhiteTextColor,
                            onpressed: () {
                              BlocProvider.of<CreateAccountBloc>(context).add(
                                  CreateAccountEvent.createAccount(
                                      fullName: fullName,
                                      location: location,
                                      email: email,
                                      phoneNumber: phoneNumber,
                                      birthday: birthday,
                                      bio: bio,
                                      gender: gender,
                                      age: age,
                                      profileImage: profileImage,
                                      coverImage: coverImage,
                                      selectedOptions: selectedOptions,
                                      preference: preference,
                                      image1: image1,
                                      image2: image2,
                                      image3: image3));
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
