import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/custom_container/custom_container.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EditProfileImages extends StatelessWidget {
  EditProfileImages(
      {super.key,
      required this.age,
      required this.bio,
      required this.birthday,
      this.coverPic,
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
  File? coverPic;
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
  File? image0;
  File? image1;
  File? image2;
  final String location;
  final String relationshipStatus;
  final String smoking;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String instructions = '''Add atleast two picture to continue. 
Avoid Blurry Photos. 
Try to upload image within 2 MB size. 
Stay clear of inappropriate content''';

    return Scaffold(
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

              if (state.pickedProfileImage == null) {
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
              } else if (state.pickedProfileImage != null) {
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
                          text: 'Its all about presentation',
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
                            child: Image.file(profilePic,
                                fit: BoxFit.cover)),
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
                                child: Text('No cover image available')),
                      ),
                      onTap: () {
                        pickImageModalPopUp(
                          context,
                          () {
                            BlocProvider.of<BasicInfoAuthBloc>(context)
                                .add(const BasicInfoAuthEvent.pickCoverImage());
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
                              image: image0,
                              onTapFunction: () {
                                pickImageModalPopUp(context, () {
                                  BlocProvider.of<BasicInfoAuthBloc>(context)
                                      .add(const BasicInfoAuthEvent
                                          .pickImage1());
                                });
                              }),
                          CustomContainer(
                              height: height,
                              width: width,
                              image: image1,
                              onTapFunction: () {
                                pickImageModalPopUp(context, () {
                                  BlocProvider.of<BasicInfoAuthBloc>(context)
                                      .add(const BasicInfoAuthEvent
                                          .pickImage2());
                                });
                              }),
                          CustomContainer(
                              height: height,
                              width: width,
                              image: image2,
                              onTapFunction: () {
                                pickImageModalPopUp(context, () {
                                  BlocProvider.of<BasicInfoAuthBloc>(context)
                                      .add(const BasicInfoAuthEvent
                                          .pickImage3());
                                });
                              }),
                        ]),
                    SizedBox(height: height * 0.02),
                    MainCustomButton(
                      customtext: 'Continue',
                      width: width * 0.2,
                      txtcolor: CustomColors.kWhiteTextColor,
                      onpressed: () {
                        // log("$fullName,$birthday,$coverImage,$email,$location,$phoneNumber,$profileImage,$image1,$image2,$image3");
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => BasicInfoLastPage(
                        //       fullName: fullName,
                        //       email: email,
                        //       location: location,
                        //       birthday: birthday,
                        //       phoneNumber: phoneNumber,
                        //       profileImage: profileImage,
                        //       coverImage: coverImage,
                        //       image1: image1,
                        //       image2: image2,
                        //       image3: image3,
                        //     ),
                        //   ),
                        // );
                      },
                    )
                  ],
                );
              } else {
                return Center();
              }
            },
          ),
        ),
      ),
    );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     String instructions = '''Add atleast two picture to continue. 
// Avoid Blurry Photos. 
// Try to upload image within 2 MB size. 
// Stay clear of inappropriate content''';

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: BlocBuilder<BasicInfoAuthBloc, BasicInfoAuthState>(
//             builder: (context, state) {
//               if (state.coverProfileImage != null) {
//                 coverPic = File(state.coverProfileImage!.path);
//               }
//               if (state.pic1 != null) {
//                 image0 = File(state.pic1!.path);
//               }
//               if (state.pic2 != null) {
//                 image1 = File(state.pic2!.path);
//               }
//               if (state.pic3 != null) {
//                 image2 = File(state.pic3!.path);
//               }
//               return Column(
//                 children: [
//                   SizedBox(height: height * 0.03),
//                   Row(children: [
//                     SizedBox(width: width * 0.02),
//                     BorderlineButton(
//                         icon: Icons.arrow_back_ios_new,
//                         onpressed: () {
//                           Navigator.pop(context);
//                         }),
//                     SizedBox(width: width * 0.05),
//                     const CustomText(
//                         text: 'Its all about presentation',
//                         fontFamily: CustomFont.headTextFont,
//                         fontsize: 20,
//                         textColor: Colors.black)
//                   ]),
//                   SizedBox(height: height * 0.03),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                           height: height * 0.25,
//                           width: width * 0.35,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Colors.grey.withOpacity(0.5),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: const Offset(0, 3)),
//                               ]),
//                           child: Image.file(profilePic, fit: BoxFit.cover)),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           CustomText(
//                             width: width * 0.5,
//                             text: instructions,
//                             textalign: TextAlign.start,
//                             fontFamily: CustomFont.textFont,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: height * 0.01),
//                   GestureDetector(
//                     child: Container(
//                         height: height * 0.25,
//                         width: width * 0.99,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.grey.withOpacity(0.5),
//                                   spreadRadius: 5,
//                                   blurRadius: 7,
//                                   offset: const Offset(0, 3)),
//                             ]),

//                         ///--------------->>>>>>>>>>----------------cover image --------->>>>>>>>>>>---------

//                         child: state.coverProfileImage != null
//                             ? Image.file(File(state.coverProfileImage!.path),
//                                 fit: BoxFit.cover)
//                             : Image.file(coverPic ?? File(''),
//                                 fit: BoxFit.cover)

//                         //  const Center(
//                         //     child: Text('No cover image available')),
//                         ),
//                     onTap: () {
//                       pickImageModalPopUp(
//                         context,
//                         () {
//                           BlocProvider.of<BasicInfoAuthBloc>(context)
//                               .add(const BasicInfoAuthEvent.pickCoverImage());
//                         },
//                       );
//                     },
//                   ),
//                   SizedBox(height: height * 0.01),

//                   //---------->>>>>>>>>>-----------Custom images ------------>>>>>>>>>>>>>-------
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CustomContainer(
//                             height: height,
//                             width: width,
//                             image: image0,
//                             onTapFunction: () {
//                               pickImageModalPopUp(context, () {
//                                 BlocProvider.of<BasicInfoAuthBloc>(context)
//                                     .add(const BasicInfoAuthEvent.pickImage1());
//                               });
//                             }),
//                         CustomContainer(
//                             height: height,
//                             width: width,
//                             image: image1,
//                             onTapFunction: () {
//                               pickImageModalPopUp(context, () {
//                                 BlocProvider.of<BasicInfoAuthBloc>(context)
//                                     .add(const BasicInfoAuthEvent.pickImage2());
//                               });
//                             }),
//                         CustomContainer(
//                             height: height,
//                             width: width,
//                             image: image2,
//                             onTapFunction: () {
//                               pickImageModalPopUp(context, () {
//                                 BlocProvider.of<BasicInfoAuthBloc>(context)
//                                     .add(const BasicInfoAuthEvent.pickImage3());
//                               });
//                             }),
//                       ]),
//                   SizedBox(height: height * 0.02),
//                   MainCustomButton(
//                     customtext: 'Continue',
//                     width: width * 0.2,
//                     txtcolor: CustomColors.kWhiteTextColor,
//                     onpressed: () {
//                       log("$fullName,$birthday,$coverPic,$email,$location,$phone,$profilePic,$image1,$image2,$image0");
//                       // Navigator.pushReplacement(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) => BasicInfoLastPage(
//                       //       fullName: fullName,
//                       //       email: email,
//                       //       location: location,
//                       //       birthday: birthday,
//                       //       phoneNumber: phoneNumber,
//                       //       profileImage: profileImage,
//                       //       coverImage: coverImage,
//                       //       image1: image1,
//                       //       image2: image2,
//                       //       image3: image3,
//                       //     ),
//                       //   ),
//                       // );
//                     },
//                   )
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
