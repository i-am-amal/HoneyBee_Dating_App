import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/location_auth_page/location_auth_page_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/profile_images/profile_images.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_in_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({
    super.key,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.birthday,
    required this.profileImage,
  });

  final String fullName;
  final String email;
  final String phoneNumber;
  final String birthday;
  final File profileImage;

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
                      LoadingAnimationWidget.halfTriangleDot(
                        color: CustomColors.kRedButtonColor,
                        size: 100,
                      ),
                      SizedBox(height: height * 0.03),
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
                    SizedBox(height: height * 0.1),
                    SizedBox(
                      height: height * 0.5,
                      width: double.infinity,
                      child: Image.asset('assets/images/location1.jpg'),
                    ),
                    SizedBox(height: height * 0.02),
                    CustomText(
                      text: state.locationName!,
                      letterspacing: 1.5,
                      fontFamily: CustomFont.headTextFont,
                      fontsize: 17,
                    ),
                    SizedBox(height: height * 0.06),
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
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      ProfileImages(
                                          fullName: fullName,
                                          email: email,
                                          birthday: birthday,
                                          phoneNumber: phoneNumber,
                                          location: state.locationName!,
                                          profileImage: profileImage),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = Offset(1.0, 0.0);
                                const end = Offset.zero;
                                const curve = Curves.easeInOutQuart;
                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);
                                return SlideTransition(
                                    position: offsetAnimation, child: child);
                              },
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
                    SizedBox(height: height * 0.1),
                    Image.asset('assets/images/location1.jpg'),
                    CustomText(
                      text: state.errorMessage,
                      letterspacing: 1.5,
                      fontFamily: CustomFont.headTextFont,
                      fontsize: 17,
                    ),
                    SizedBox(height: height * 0.02),
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
  }
}
