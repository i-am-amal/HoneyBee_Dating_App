import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/location/location_page.dart';
import 'package:honeybee/presentation/screens/sign_in/sign_in_page/sign_in_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/date_picker/date_picker.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';
import 'package:intl/intl.dart';

import 'pick_image_modal_popup.dart';

class BasicInfoMainPage extends StatelessWidget {
  BasicInfoMainPage({super.key, this.formattedPhoneNumber});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final String? formattedPhoneNumber;

  @override
  Widget build(BuildContext context) {
    phoneNumberController.text = formattedPhoneNumber ?? '';
    debugPrint("--------------building the basic info page-------------");
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        // Show an alert dialog
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
          child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
            builder: (context, state) {
              final bool isImageSelected = state.pickedProfileImage != null;
              //>>>>>>>>>>>>>>>>>>>-------profile image storing and navigation--------->>>>>>>>>>>>>

              if (state.isValidated != null) {
                if (state.isValidated == true) {
                  File image = File(state.pickedProfileImage!.path);

                  log('${nameController.text}, ${emailController.text}, ${phoneNumberController.text}, ${dateController.text}, $image');

                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    ///page route builder
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            LocationPage(
                          fullName: nameController.text,
                          email: emailController.text,
                          phoneNumber: phoneNumberController.text,
                          birthday: dateController.text,
                          profileImage: image,
                        ),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
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

                    ///page route builder ends ***************************

                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => LocationPage(
                    //       fullName: nameController.text,
                    //       email: emailController.text,
                    //       phoneNumber: phoneNumberController.text,
                    //       birthday: dateController.text,
                    //       profileImage: image,
                    //     ),
                    //   ),
                    // );
                  });
                  //>>>>>>>>>>>>>>------------------->>>>>>>>>>>>>>>>>>>>>>
                }
              }

              return Column(
                children: [
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.08,
                      ),
                      const CustomText(
                        text: 'Basic Info',
                        letterspacing: 1,
                        fontFamily: CustomFont.headTextFont,
                        fontWeight: FontWeight.bold,
                        fontsize: 25,
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      //// profile image section
                      ClipOval(
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.teal.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3)),
                              ],
                            ),
                            width: width * 0.33,
                            height: height * 0.23,
                            child: isImageSelected
                                ? Image.file(
                                    File(state.pickedProfileImage!.path),
                                    fit: BoxFit.cover,
                                  )
                                : const Center(
                                    child: Icon(
                                      Icons.add_a_photo,
                                      size: 48,
                                      color: Color.fromARGB(255, 59, 60, 122),
                                    ),
                                  ),
                          ),
                          onTap: () {
                            pickImageModalPopUp(
                              context,
                              () {
                                BlocProvider.of<BasicInfoAuthBloc>(context).add(
                                    const BasicInfoAuthEvent
                                        .pickProfileImageFromCamera());
                              },
                              () {
                                BlocProvider.of<BasicInfoAuthBloc>(context).add(
                                    const BasicInfoAuthEvent
                                        .pickProfileImageFromGallery());

                                log("bloc provider worked");
                              },
                            );
                          },
                        ),
                      ),
                      //// profile image section ends

                      Positioned(
                        bottom: 0,
                        right: -10,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.camera,
                            color: Colors.red[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTextFormFiled(
                    text: 'Full Name',
                    editController: nameController,
                    keyboardType: TextInputType.name,
                    icon: Icons.badge_outlined,
                    errorMessage: state.fullNameErrorMsg,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  CustomTextFormFiled(
                    text: 'Email',
                    editController: emailController,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                    errorMessage: state.emailErrorMsg,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  CustomTextFormFiled(
                    text: 'Phone Number',
                    editController: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    icon: Icons.phone_sharp,
                    enable: false,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  CustomTextFormFiled(
                    icon: Icons.calendar_month_outlined,
                    text: 'Birthday',
                    editController: dateController,
                    errorMessage: state.birthdayErrorMsg,
                    readonly: true,
                    onTap: () async {
                      await CustomDatePicker.showDatePickerDialog(context);
                      if (CustomDatePicker.selectedDate != null) {
                        final formatter = DateFormat('dd/MM/yyyy');

                        String formattedDate = formatter
                            .format(CustomDatePicker.selectedDate!)
                            .toString();
                        dateController.text = formattedDate;

                        log(formattedDate);
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.03,
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
                      if (!isImageSelected) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Row(
                              children: [
                                Icon(Icons.error_outline, color: Colors.white),
                                SizedBox(width: 15),
                                Flexible(
                                  child: Text(
                                    'Please select profile picture...📸...',
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
                            // margin: EdgeInsets.symmetric(vertical: 100),
                          ),
                        );
                      } else {
                        BlocProvider.of<BasicInfoAuthBloc>(context).add(
                          BasicInfoAuthEvent.nextPage(
                            fullName: nameController.text,
                            email: emailController.text,
                            birthday: dateController.text,
                          ),
                        );
                      }

                      // BlocProvider.of<BasicInfoAuthBloc>(context).add(
                      //     BasicInfoAuthEvent.nextPage(
                      //         fullName: nameController.text,
                      //         email: emailController.text,
                      //         birthday: dateController.text));
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
