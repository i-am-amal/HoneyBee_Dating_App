import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_location_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/date_picker/date_picker.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:intl/intl.dart';
import '../../../widgets/textform_widgets/custom_textformfield.dart';

class EditInfoMainPage extends StatefulWidget {
  const EditInfoMainPage({
    required this.editProfileDetails,
    super.key,
  });

  final EditProfileModel editProfileDetails;

  @override
  State<EditInfoMainPage> createState() => _EditInfoMainPageState();
}

class _EditInfoMainPageState extends State<EditInfoMainPage> {
  TextEditingController editDateController = TextEditingController();
  TextEditingController editNameController = TextEditingController();
  TextEditingController editEmailController = TextEditingController();
  TextEditingController editPhoneNumberController = TextEditingController();
  File? profilePic;

  @override
  void initState() {
    super.initState();

    editDateController =
        TextEditingController(text: widget.editProfileDetails.birthday);
    editPhoneNumberController =
        TextEditingController(text: widget.editProfileDetails.phone);
    editNameController =
        TextEditingController(text: widget.editProfileDetails.fullName);
    editEmailController =
        TextEditingController(text: widget.editProfileDetails.email);
    profilePic = widget.editProfileDetails.profilePic;
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

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
          builder: (context, state) {
            //>>>>>>>>>>>>>>>>>>>-------profile image storing and navigation--------->>>>>>>>>>>>>

            if (state.isValidated != null) {
              if (state.isValidated == true) {
                if (state.pickedProfileImage != null) {
                  profilePic = File(state.pickedProfileImage!.path);
                }

                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  log('''----log on edit info main page------
                                age-  ${widget.editProfileDetails.age},
                               bio-   ${widget.editProfileDetails.bio},
                                birthday-  ${editDateController.text},
                                 coverpic- ${widget.editProfileDetails.coverPic},
                                 drinking- ${widget.editProfileDetails.drinking},
                                email-  ${editEmailController.text},
                                 faith ${widget.editProfileDetails.faith},
                                 name- ${editNameController.text},
                                 gender- ${widget.editProfileDetails.gender},
                                 image0- ${widget.editProfileDetails.image0},
                                 image1- ${widget.editProfileDetails.image1},
                                 image2- ${widget.editProfileDetails.image2},
                                 location- ${widget.editProfileDetails.location},
                                 phone- ${editPhoneNumberController.text},
                                 preference- ${widget.editProfileDetails.preference},
                                 profilepic- $profilePic
                                  relationshipStatus- ${widget.editProfileDetails.relationshipStatus} 
                                 smoking-  ${widget.editProfileDetails.smoking}
                                  ''');

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditLocationPage(
                                editProfileDetails: EditProfileModel(
                              age: widget.editProfileDetails.age,
                              bio: widget.editProfileDetails.bio,
                              birthday: editDateController.text,
                              coverPic: widget.editProfileDetails.coverPic,
                              drinking: widget.editProfileDetails.drinking,
                              email: editEmailController.text,
                              faith: widget.editProfileDetails.faith,
                              fullName: editNameController.text,
                              gender: widget.editProfileDetails.gender,
                              image0: widget.editProfileDetails.image0,
                              image1: widget.editProfileDetails.image1,
                              image2: widget.editProfileDetails.image2,
                              location: widget.editProfileDetails.location,
                              phone: editPhoneNumberController.text,
                              preference: widget.editProfileDetails.preference,
                              profilePic: profilePic,
                              relationshipStatus:
                                  widget.editProfileDetails.relationshipStatus,
                              smoking: widget.editProfileDetails.smoking,
                            ))),
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
                          child:
                              //  profilePic != null
                              //     ? Image.file(profilePic!)
                              //     : Image.network(
                              //         widget.editProfileDetails.profilePic!.path),
                              state.pickedProfileImage != null
                                  ? Image.file(
                                      File(state.pickedProfileImage!.path),
                                    )
                                  : Image.network(widget
                                      .editProfileDetails.profilePic!.path),
                          onTap: () {
                            log("on tap on pop up edit info main page");
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
