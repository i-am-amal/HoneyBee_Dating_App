import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/location/location_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/date_picker/date_picker.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import '../../../../application/basic_info_auth_page/basic_info_auth_bloc.dart';
import '../../../widgets/textform_widgets/custom_textformfield.dart';
import 'pick_image_modal_popup.dart';

// ignore: must_be_immutable
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

    return BlocListener<BasicInfoAuthBloc, BasicInfoAuthState>(
      listener: (context, state) {
        if (state.isValidated == true) {
          File image = File(state.pickedImage!.path);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LocationPage(
                fullName: nameController.text,
                email: emailController.text,
                phoneNumber: phoneNumberController.text,
                birthday: dateController.text,
                image: image,
              ),
            ),
          );
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
            builder: (context, state) {
              return Column(
                children: [
                  SizedBox(
                    height: height * 0.1,
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
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      ClipOval(
                        child: SizedBox(
                            width: width * 0.33,
                            height: height * 0.25,
                            child: GestureDetector(
                              child: state.pickedImage != null
                                  ? Image.file(File(state.pickedImage!.path),
                                      fit: BoxFit.cover)
                                  : Image.asset('assets/images/profile.jpg'),
                              onTap: () {
                                pickImageModalPopUp(context);
                              },
                            )),
                      ),
                      Positioned(
                        bottom: 25,
                        right: -5,
                        child: GestureDetector(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextFormFiled(
                    text: 'Full Name',
                    editController: nameController,
                    keyboardType: TextInputType.name,
                    icon: Icons.badge_outlined,
                    errorMessage: state.fullNameErrorMsg,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextFormFiled(
                    text: 'Email',
                    editController: emailController,
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                    errorMessage: state.emailErrorMsg,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomTextFormFiled(
                    text: 'Phone Number',
                    editController: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    icon: Icons.phone_sharp,
                    enable: false,
                  ),
                  SizedBox(
                    height: height * 0.02,
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
                        String formattedDate = CustomDatePicker.selectedDate!
                            .toString()
                            .split(' ')[0];
                        dateController.text = formattedDate;
                        log(formattedDate);
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
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
                      BlocProvider.of<BasicInfoAuthBloc>(context).add(
                          BasicInfoAuthEvent.nextPage(
                              fullName: nameController.text,
                              email: emailController.text,
                              birthday: dateController.text));
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

  ///////////////////////////////////////////////////////////////////////////////////

//   bool submitForm(BuildContext context) {
//     if (!FormValidationServices.fullNameValidation(nameController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid full name (at least 3 characters)'),
//       ));
//       return false;
//     }

//     if (!FormValidationServices.emailValidation(emailController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid email address'),
//       ));
//       return false;
//     }

//     if (!FormValidationServices.validateBirthday(dateController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid birthday date'),
//       ));
//       return false;
//     }

//     return true;
//   }

//   ///////////////////////////////////////////////////////////////////////////////////
}
