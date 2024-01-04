import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_location_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/date_picker/date_picker.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:intl/intl.dart';
import '../../../widgets/textform_widgets/custom_textformfield.dart';

class EditInfoMainPage extends StatefulWidget {
  const EditInfoMainPage(
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
  State<EditInfoMainPage> createState() => _EditInfoMainPageState();
}

class _EditInfoMainPageState extends State<EditInfoMainPage> {
  TextEditingController editDateController = TextEditingController();
  TextEditingController editNameController = TextEditingController();
  TextEditingController editEmailController = TextEditingController();
  TextEditingController editPhoneNumberController = TextEditingController();
  File? pickedProfilePic;

  @override
  void initState() {
    super.initState();

    editDateController = TextEditingController(text: widget.birthday);
    editPhoneNumberController = TextEditingController(text: widget.phone);
    editNameController = TextEditingController(text: widget.fullName);
    editEmailController = TextEditingController(text: widget.email);
    pickedProfilePic = widget.profilePic;
  }

  @override
  void dispose() {
    editDateController.dispose();
    editPhoneNumberController.dispose();
    editNameController.dispose();
    editEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // editDateController.text = widget.birthday;
    // editPhoneNumberController.text = widget.phone;
    // editNameController.text = widget.fullName;
    // editEmailController.text = widget.email;

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
          builder: (context, state) {
            //>>>>>>>>>>>>>>>>>>>-------profile image storing and navigation--------->>>>>>>>>>>>>

            if (state.isValidated != null) {
              if (state.isValidated == true) {


                if (pickedProfilePic != null) {
                  pickedProfilePic = File(pickedProfilePic!.path);
                }

                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  log('${editDateController.text},${editEmailController.text},${editNameController.text},${editPhoneNumberController.text}');
                  log(pickedProfilePic.toString());
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditLocationPage(
                        fullName: editNameController.text,
                        birthday: editDateController.text,
                        email: editEmailController.text,
                        phone: widget.phone,
                        profilePic: pickedProfilePic ?? File(''),
                        age: widget.age,
                        bio: widget.bio,
                        coverPic: widget.coverPic,
                        drinking: widget.drinking,
                        faith: widget.faith,
                        gender: widget.gender,
                        location: widget.location,
                        preference: widget.preference,
                        relationshipStatus: widget.relationshipStatus,
                        smoking: widget.smoking,
                        image0: widget.image0,
                        image1: widget.image1,
                        image2: widget.image2,
                      ),
                    ),
                  );
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
                      text: 'Edit Basic Info',
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


                          child: state.pickedProfileImage != null
                              ? Image.file(
                                  File(state.pickedProfileImage!.path),
                                )
                              : Image.network(widget.profilePic.path),

                              
                          onTap: () {
                            log("on tap on pop up edit info main page");
                            pickImageModalPopUp(
                              context,
                              () {
                                BlocProvider.of<BasicInfoAuthBloc>(context).add(
                                    const BasicInfoAuthEvent
                                        .pickProfileImage());
                                log("bloc provider worked");
                              },
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
                  height: height * 0.01,
                ),
                CustomTextFormFiled(
                  text: 'Full Name',
                  editController: editNameController,
                  keyboardType: TextInputType.name,
                  icon: Icons.badge_outlined,
                  errorMessage: state.fullNameErrorMsg,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomTextFormFiled(
                  text: 'Email',
                  editController: editEmailController,
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                  errorMessage: state.emailErrorMsg,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                CustomTextFormFiled(
                  text: 'Phone Number',
                  editController: editPhoneNumberController,
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
                  editController: editDateController,
                  errorMessage: state.birthdayErrorMsg,
                  readonly: true,
                  onTap: () async {
                    await CustomDatePicker.showDatePickerDialog(context);
                    if (CustomDatePicker.selectedDate != null) {
                      final formatter = DateFormat('dd/MM/yyyy');

                      // String formattedDate = CustomDatePicker.selectedDate!;

                      String formattedDate = formatter
                          .format(CustomDatePicker.selectedDate!)
                          .toString();

                      editDateController.text = formattedDate;
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
                    log(editDateController.text);
                    BlocProvider.of<BasicInfoAuthBloc>(context).add(
                        BasicInfoAuthEvent.nextPage(
                            fullName: editNameController.text,
                            email: editEmailController.text,
                            birthday: editDateController.text));
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
