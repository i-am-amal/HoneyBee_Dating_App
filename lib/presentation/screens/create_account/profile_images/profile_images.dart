import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_in_page.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/presentation/widgets/custom_container/custom_container.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';

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
                    SizedBox(height: height * 0.03),
                    Row(children: [
                      SizedBox(width: width * 0.02),
                      BorderlineButton(
                          icon: Icons.arrow_back_ios_new,
                          onpressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(width: width * 0.05),
                      const CustomText(
                          text: 'It\'s all about presentation',
                          fontFamily: CustomFont.headTextFont,
                          fontsize: 20,
                          textColor: Colors.black)
                    ]),
                    SizedBox(height: height * 0.03),
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
                                      offset: const Offset(0, 3)),
                                ]),
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
                    SizedBox(height: height * 0.01),
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
                                  offset: const Offset(0, 3)),
                            ]),

                        ///--------------->>>>>>>>>>----------------cover image --------->>>>>>>>>>>---------

                        child: state.coverProfileImage != null
                            ? Image.file(File(state.coverProfileImage!.path),
                                fit: BoxFit.cover)
                            : const Center(
                                child: Text('Please add a cover image')),
                      ),
                      onTap: () {
                        pickImageModalPopUp(
                          context,
                          () {
                            BlocProvider.of<BasicInfoAuthBloc>(context).add(
                                const BasicInfoAuthEvent
                                    .pickCoverImageFromCamera());
                          },
                          () {
                            BlocProvider.of<BasicInfoAuthBloc>(context).add(
                                const BasicInfoAuthEvent
                                    .pickCoverImageFromGallery());
                          },
                        );
                      },
                    ),
                    SizedBox(height: height * 0.01),
                    //---------->>>>>>>>>>-----------Custom images ------------>>>>>>>>>>>>>-------
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                              height: height,
                              width: width,
                              image: image1,
                              onTapFunction: () {
                                pickImageModalPopUp(
                                  context,
                                  () {
                                    BlocProvider.of<BasicInfoAuthBloc>(context)
                                        .add(const BasicInfoAuthEvent
                                            .pickImage1FromCamera());
                                  },
                                  () {
                                    BlocProvider.of<BasicInfoAuthBloc>(context)
                                        .add(const BasicInfoAuthEvent
                                            .pickImage1FromGallery());
                                  },
                                );
                              }),
                          CustomContainer(
                              height: height,
                              width: width,
                              image: image2,
                              onTapFunction: () {
                                pickImageModalPopUp(
                                  context,
                                  () {
                                    BlocProvider.of<BasicInfoAuthBloc>(context)
                                        .add(const BasicInfoAuthEvent
                                            .pickImage2FromCamera());
                                  },
                                  () {
                                    BlocProvider.of<BasicInfoAuthBloc>(context)
                                        .add(const BasicInfoAuthEvent
                                            .pickImage2FromGallery());
                                  },
                                );
                              }),
                          CustomContainer(
                              height: height,
                              width: width,
                              image: image3,
                              onTapFunction: () {
                                pickImageModalPopUp(
                                  context,
                                  () {
                                    BlocProvider.of<BasicInfoAuthBloc>(context)
                                        .add(const BasicInfoAuthEvent
                                            .pickImage3FromCamera());
                                  },
                                  () {
                                    BlocProvider.of<BasicInfoAuthBloc>(context)
                                        .add(const BasicInfoAuthEvent
                                            .pickImage3FromGallery());
                                  },
                                );
                              }),
                        ]),
                    SizedBox(height: height * 0.02),
                    MainCustomButton(
                      customtext: 'Continue',
                      width: width * 0.2,
                      txtcolor: CustomColors.kWhiteTextColor,
                      onpressed: () {
                        if (coverImage != null) {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      BasicInfoLastPage(
                                fullName: fullName,
                                email: email,
                                location: location,
                                birthday: birthday,
                                phoneNumber: phoneNumber,
                                profileImage: profileImage,
                                coverImage: coverImage!,
                                image1: image1,
                                image2: image2,
                                image3: image3,
                              ),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Row(
                                children: [
                                  Icon(Icons.error_outline,
                                      color: Colors.white),
                                  SizedBox(width: 15),
                                  Flexible(
                                    child: Text(
                                      'Please select cover picture...📸...',
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
                        }
                      },
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
