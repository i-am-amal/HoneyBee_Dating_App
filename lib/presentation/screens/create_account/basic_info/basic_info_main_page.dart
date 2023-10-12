import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honeybee/infrastructure/camera_services.dart';
import 'package:honeybee/presentation/screens/create_account/location/location_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/date_picker/date_picker.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../domain/validation/form_validation_services.dart';
import '../../../widgets/textform_widgets/custom_textformfield.dart';

class BasicInfoMainPage extends StatelessWidget {
  BasicInfoMainPage({super.key, this.formattedPhoneNumber});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final ImagePickerServices imagePicker = ImagePickerServices();
  File? selectedImage;
  final String? formattedPhoneNumber;

  void pickImageFromCamera() async {
    XFile? image = await imagePicker.pickImageFromCamera();
    if (image != null) {
      selectedImage = File(image.path);
      print("---------pick from camera----------${image.path}");
    }
  }

  void pickImageFromGallery() async {
    XFile? image = await imagePicker.pickImageFromGallery();
    if (image != null) {
      selectedImage = File(image.path);
      print("---------pick from gallery----------${image.path}");
    }
  }

  @override
  Widget build(BuildContext context) {
    phoneNumberController.text = formattedPhoneNumber ?? '';
    debugPrint("--------------building the basic info page-------------");
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      child: selectedImage != null
                          ? Image.file(selectedImage!, fit: BoxFit.cover)
                          : Image.asset('assets/images/default profile.jpg'),
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoActionSheet(
                            title: const Text('Choose an option'),
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.camera_alt),
                                    SizedBox(width: 8),
                                    Text('Camera'),
                                  ],
                                ),
                                onPressed: () {
                                  pickImageFromCamera();
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.photo),
                                    SizedBox(width: 8),
                                    Text('Gallery'),
                                  ],
                                ),
                                onPressed: () {
                                  pickImageFromGallery();
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                            cancelButton: CupertinoActionSheetAction(
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                  color: CupertinoColors.systemRed,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextFormFiled(
              text: 'Email',
              editController: emailController,
              keyboardType: TextInputType.emailAddress,
              icon: Icons.email_outlined,
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
              readonly: true,
              onTap: () async {
                await CustomDatePicker.showDatePickerDialog(context);
                if (CustomDatePicker.selectedDate != null) {
                  String formattedDate =
                      CustomDatePicker.selectedDate!.toString().split(' ')[0];
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
                if (submitForm(context)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationPage(
                        fullName: nameController.text,
                        email: emailController.text,
                        phoneNumber: phoneNumberController.text,
                        birthday: dateController.text,
                      ),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////////////////////

  bool submitForm(BuildContext context) {
    if (!FormValidationServices.fullNameValidation(nameController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please enter a valid full name (at least 3 characters)'),
      ));
      return false;
    }

    if (!FormValidationServices.emailValidation(emailController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please enter a valid email address'),
      ));
      return false;
    }

    if (!FormValidationServices.validateBirthday(dateController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please enter a valid birthday date'),
      ));
      return false;
    }

    return true;
  }

  ///////////////////////////////////////////////////////////////////////////////////
}
