import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_info_last_page.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EditProfileImages extends StatefulWidget {
  const EditProfileImages({
    required this.editProfileDetails,
    super.key,
  });

  final EditProfileModel editProfileDetails;

  @override
  State<EditProfileImages> createState() => _EditProfileImagesState();
}

class _EditProfileImagesState extends State<EditProfileImages> {
  File? profilePic;
  File? coverPic;
  File? image0;
  File? image1;
  File? image2;
  @override
  void initState() {
    super.initState();
    profilePic = widget.editProfileDetails.profilePic;
    coverPic = widget.editProfileDetails.coverPic;
    image0 = widget.editProfileDetails.image0;
    image1 = widget.editProfileDetails.image1;
    image2 = widget.editProfileDetails.image2;
    log(profilePic.toString());
  }

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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
              builder: (context, state) {
                if (state.coverProfileImage != null) {
                  coverPic = File(state.coverProfileImage!.path);
                }
                if (state.pic1 != null) {
                  image0 = File(state.pic1!.path);
                }
                if (state.pic2 != null) {
                  image1 = File(state.pic2!.path);
                }
                if (state.pic3 != null) {
                  image2 = File(state.pic3!.path);
                }

                if (profilePic == null) {
                  return Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 250,
                        ),
                        LoadingAnimationWidget.discreteCircle(
                          color: CustomColors.kRedButtonColor,
                          size: 70,
                        ),
                      ],
                    ),
                  );
                } else if (profilePic != null) {
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
                                    offset: const Offset(0, 3),
                                  ),
                                ]),

                            ///////////////////////////////////
                            child: profilePic != null
                                ? profilePic!.path.startsWith(
                                        'http') // Assuming URLs start with 'http'
                                    ? Image.network(profilePic!.path,
                                        fit: BoxFit.cover)
                                    : Image.file(profilePic!, fit: BoxFit.cover)
                                : const Center(
                                    child: Text('No profile image available')),
                            //////////////////////////////////
                          ),
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

                          child: coverPic != null
                              ? coverPic!.path.startsWith(
                                      'http') // Assuming URLs start with 'http'
                                  ? Image.network(coverPic!.path,
                                      fit: BoxFit.cover)
                                  : Image.file(File(coverPic!.path),
                                      fit: BoxFit.cover)
                              : const Center(
                                  child: Text('No cover image available'),
                                ),
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

                              log("bloc provider worked");
                            },
                          );
                        },
                      ),
                      SizedBox(height: height * 0.01),

                      //---------->>>>>>>>>>-----------Custom images ------------>>>>>>>>>>>>>-------
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // CustomImageContainer(
                            //     height: height,
                            //     width: width,
                            //     image: image0,
                            //     imagePath:
                            //         widget.editProfileDetails.image0!.path,
                            //     onCameraPressed: () {
                            //       BlocProvider.of<BasicInfoAuthBloc>(context)
                            //           .add(const BasicInfoAuthEvent
                            //               .pickImage1FromCamera());
                            //     },
                            //     onGalleryPressed: () {
                            //       BlocProvider.of<BasicInfoAuthBloc>(context)
                            //           .add(const BasicInfoAuthEvent
                            //               .pickImage1FromGallery());
                            //     }),
                            ////////////////////////////////////////////////
                            InkWell(
                              child: Container(
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
                                child: image0 != null
                                    ? image0!.path.startsWith(
                                            'http') // Assuming URLs start with 'http'
                                        ? Image.network(image0!.path,
                                            fit: BoxFit.cover)
                                        : Image.file(File(image0!.path),
                                            fit: BoxFit.cover)
                                    : const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            // '''Add an extra photo if you'd like''',
                                            '   Optional: Add a picture',
                                            // style: TextStyle(letterSpacing: 0),
                                          ),
                                        ),
                                      ),
                              ),
                              onTap: () {
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

                                    log("bloc provider worked");
                                  },
                                );
                              },
                            ),

                            InkWell(
                              child: Container(
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
                                child: image1 != null
                                    ? image1!.path.startsWith(
                                            'http') // Assuming URLs start with 'http'
                                        ? Image.network(image1!.path,
                                            fit: BoxFit.cover)
                                        : Image.file(File(image1!.path),
                                            fit: BoxFit.cover)
                                    : const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            // '''Add an extra photo if you'd like''',
                                            '   Optional: Add a picture',
                                            // style: TextStyle(letterSpacing: 0),
                                          ),
                                        ),
                                      ),
                              ),
                              onTap: () {
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

                                    log("bloc provider worked");
                                  },
                                );
                              },
                            ),
                            InkWell(
                              child: Container(
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
                                child: image2 != null
                                    ? image2!.path.startsWith(
                                            'http') // Assuming URLs start with 'http'
                                        ? Image.network(image2!.path,
                                            fit: BoxFit.cover)
                                        : Image.file(File(image2!.path),
                                            fit: BoxFit.cover)
                                    : const Center(
                                        child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Text(
                                            // '''Add an extra photo if you'd like''',
                                            '   Optional: Add a picture',
                                            // style: TextStyle(letterSpacing: 0),
                                          ),
                                        ),
                                      ),
                              ),
                              onTap: () {
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

                                    log("bloc provider worked");
                                  },
                                );
                              },
                            ),
                            ////////////////////////
                          ]),
                      SizedBox(height: height * 0.02),
                      MainCustomButton(
                        customtext: 'Continue',
                        width: width * 0.2,
                        txtcolor: CustomColors.kWhiteTextColor,
                        onpressed: () {
                          log('''----log on edit profileimages page------
                                age-  ${widget.editProfileDetails.age},
                               bio-   ${widget.editProfileDetails.bio},
                                birthday-  ${widget.editProfileDetails.birthday},
                                 coverpic- $coverPic,
                                 drinking- ${widget.editProfileDetails.drinking},
                                email-  ${widget.editProfileDetails.email},
                                 faith ${widget.editProfileDetails.faith},
                                 name- ${widget.editProfileDetails.fullName},
                                 gender- ${widget.editProfileDetails.gender},
                                 image0- $image0,
                                 image1- $image1,
                                 image2- $image2,
                                 location- ${widget.editProfileDetails.location},
                                 phone- ${widget.editProfileDetails.phone},
                                 preference- ${widget.editProfileDetails.preference},
                                 profilepic- ${widget.editProfileDetails.profilePic}
                                  relationshipStatus- ${widget.editProfileDetails.relationshipStatus} 
                                 smoking-  ${widget.editProfileDetails.smoking}
                                  ''');

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditInfoLastPage(
                                editProfileDetails: EditProfileModel(
                                  age: widget.editProfileDetails.age,
                                  bio: widget.editProfileDetails.bio,
                                  birthday: widget.editProfileDetails.birthday,
                                  coverPic: coverPic,
                                  drinking: widget.editProfileDetails.drinking,
                                  email: widget.editProfileDetails.email,
                                  faith: widget.editProfileDetails.faith,
                                  fullName: widget.editProfileDetails.fullName,
                                  gender: widget.editProfileDetails.gender,
                                  image0: image0,
                                  image1: image1,
                                  image2: image2,
                                  location: widget.editProfileDetails.location,
                                  phone: widget.editProfileDetails.phone,
                                  preference:
                                      widget.editProfileDetails.preference,
                                  profilePic:
                                      widget.editProfileDetails.profilePic,
                                  relationshipStatus: widget
                                      .editProfileDetails.relationshipStatus,
                                  smoking: widget.editProfileDetails.smoking,
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  );
                } else {
                  return const Center();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
