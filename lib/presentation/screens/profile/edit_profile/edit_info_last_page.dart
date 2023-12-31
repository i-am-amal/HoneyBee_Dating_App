import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/constants/lists.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_preview.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class EditInfoLastPage extends StatefulWidget {
  const EditInfoLastPage({super.key, required this.editProfileDetails});

  final EditProfileModel editProfileDetails;

  @override
  State<EditInfoLastPage> createState() => _BasicInfoLastPageState();
}

class _BasicInfoLastPageState extends State<EditInfoLastPage> {
  SelectedOptions selectedOptions = SelectedOptions(
      faith: '', drinking: '', relationshipStatus: '', smoking: '');

  List<String> faithOptions = CommonLists().faithOptions;
  List<String> relationShipOptions = CommonLists().relationShipOptions;
  List<String> genderOptions = CommonLists().genderOptions;
  List<String> drinkingOptions = CommonLists().drinkingOptions;
  List<String> smokingOptions = CommonLists().smokingOptions;
  TextEditingController bioTextController = TextEditingController();
  String selectedGenderButton = 'Male';
  String selectedPreferenceButton = 'Everyone';
  String selectedGenderOtherOption = 'Other';

  @override
  void initState() {
    super.initState();
    selectedOptions = SelectedOptions(
        faith: widget.editProfileDetails.faith!,
        drinking: widget.editProfileDetails.drinking!,
        relationshipStatus: widget.editProfileDetails.relationshipStatus!,
        smoking: widget.editProfileDetails.smoking!);
    selectedGenderButton = widget.editProfileDetails.gender!;
    selectedPreferenceButton = widget.editProfileDetails.preference!;
    bioTextController.text = widget.editProfileDetails.bio!;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              BorderlineButton(
                  icon: Icons.arrow_back_ios_new,
                  onpressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(height: height * 0.02),
              CustomText(
                  text: 'Gender',
                  fontsize: 17,
                  fontFamily: CustomFont.headTextFont,
                  height: height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainCustomButton(
                    customtext: 'Male',
                    txtcolor: CustomColors.kWhiteTextColor,
                    width: width * 0.07,
                    onpressed: () {
                      buttonSelection('Male');
                    },
                    isSelected: selectedGenderButton == 'Male',
                  ),
                  MainCustomButton(
                    customtext: 'Female',
                    width: width * 0.07,
                    txtcolor: CustomColors.kWhiteTextColor,
                    onpressed: () {
                      buttonSelection('Female');
                    },
                    isSelected: selectedGenderButton == 'Female',
                  ),
                  MainCustomButton(
                    width: width * 0.07,
                    customtext: 'Other',
                    txtcolor: CustomColors.kWhiteTextColor,
                    onpressed: () {
                      buttonSelection('Other');
                      showOptionsList(context);
                    },
                    isSelected: selectedGenderButton == 'Other',
                  )
                ],
              ),
              SizedBox(height: height * 0.05),
              CustomText(
                  text: 'Show Me',
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 17,
                  height: height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainCustomButton(
                    customtext: 'Male',
                    txtcolor: CustomColors.kWhiteTextColor,
                    width: width * 0.07,
                    onpressed: () {
                      preferenceSelection('Male');
                    },
                    isSelected: selectedPreferenceButton == 'Male',
                  ),
                  MainCustomButton(
                    customtext: 'Female',
                    width: width * 0.07,
                    txtcolor: CustomColors.kWhiteTextColor,
                    onpressed: () {
                      preferenceSelection('Female');
                    },
                    isSelected: selectedPreferenceButton == 'Female',
                  ),
                  MainCustomButton(
                    width: width * 0.07,
                    customtext: 'Everyone',
                    txtcolor: CustomColors.kWhiteTextColor,
                    onpressed: () {
                      preferenceSelection('Everyone');
                    },
                    isSelected: selectedPreferenceButton == 'Everyone',
                  )
                ],
              ),
              SizedBox(height: height * 0.05),
              TextField(
                controller: bioTextController,
                onChanged: (value) {
                  log(bioTextController.text);
                },
                maxLines: 4,
                maxLength: 100,
                decoration: const InputDecoration(
                  labelText: ' Your Bio',
                  hintText: 'Write a short bio...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: height * 0.07),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: buildOptionButton('Faith', selectedOptions.faith,
                            FontAwesomeIcons.personPraying),
                      ),
                      Flexible(
                        child: buildOptionButton(
                            'Relationship Status',
                            selectedOptions.relationshipStatus,
                            FontAwesomeIcons.heart),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: buildOptionButton('Smoking',
                            selectedOptions.smoking, FontAwesomeIcons.smoking),
                      ),
                      Flexible(
                        child: buildOptionButton(
                            'Drinking',
                            selectedOptions.drinking,
                            FontAwesomeIcons.wineGlass),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  MainCustomButton(
                    customtext: 'Continue',
                    txtcolor: CustomColors.kWhiteTextColor,
                    width: width * 0.14,
                    height: height * 0.015,
                    onpressed: () {
                      // log("-----------This is the data when pressed on create account on preview account----------${widget.fullName}, ${widget.birthday}, ${widget.coverImage}, ${widget.email}, ${widget.location}, ${widget.phoneNumber}, ${widget.profileImage}, ${widget.image1}, ${widget.image2}, ${widget.image3},${selectedOptions.faith},${selectedOptions.relationshipStatus},${selectedOptions.drinking},${selectedOptions.smoking},${bioTextController.text},$selectedGenderButton,$selectedGenderOtherOption,$selectedPreferenceButton");
                      log(selectedGenderButton);

                      log('''----log on edit last info page------
                                age-  ${widget.editProfileDetails.age},
                               bio-   ${bioTextController.text},
                                birthday-  ${widget.editProfileDetails.birthday},
                                 coverpic- ${widget.editProfileDetails.coverPic},
                                 drinking- ${selectedOptions.drinking},
                                email-  ${widget.editProfileDetails.email},
                                 faith ${selectedOptions.faith},
                                 name- ${widget.editProfileDetails.fullName},
                                 gender- $selectedGenderButton,
                                 image0- ${widget.editProfileDetails.image0},
                                 image1- ${widget.editProfileDetails.image1},
                                 image2- ${widget.editProfileDetails.image2},
                                 location- ${widget.editProfileDetails.location},
                                 phone- ${widget.editProfileDetails.phone},
                                 preference- $selectedPreferenceButton,
                                 profilepic- ${widget.editProfileDetails.profilePic}
                                  relationshipStatus- ${selectedOptions.relationshipStatus} 
                                 smoking-  ${selectedOptions.smoking}
                                  ''');

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditPreviewAccount(
                                  editProfileDetails: EditProfileModel(
                                      age: widget.editProfileDetails.age,
                                      bio: bioTextController.text,
                                      birthday:
                                          widget.editProfileDetails.birthday,
                                      coverPic:
                                          widget.editProfileDetails.coverPic,
                                      drinking: selectedOptions.drinking,
                                      email: widget.editProfileDetails.email,
                                      faith: selectedOptions.faith,
                                      fullName:
                                          widget.editProfileDetails.fullName,
                                      gender: selectedGenderButton,
                                      image0: widget.editProfileDetails.image0,
                                      image1: widget.editProfileDetails.image1,
                                      image2: widget.editProfileDetails.image2,
                                      location:
                                          widget.editProfileDetails.location,
                                      phone: widget.editProfileDetails.phone,
                                      preference: selectedPreferenceButton,
                                      profilePic:
                                          widget.editProfileDetails.profilePic,
                                      relationshipStatus:
                                          selectedOptions.relationshipStatus,
                                      smoking: selectedOptions.smoking),
                                )),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void buttonSelection(String buttonName) {
    setState(() {
      selectedGenderButton = buttonName;
      log(selectedGenderButton);
    });
  }

  void preferenceSelection(String prefName) {
    setState(() {
      selectedPreferenceButton = prefName;
      log(selectedPreferenceButton);
    });
  }

  void showOptionsDialog(String category, List<String> options) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Text(
              'Select $category',
              style: const TextStyle(fontFamily: CustomFont.headTextFont),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: options.map((option) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      log('----------------------------faith');
                      switch (category) {
                        case 'Faith':
                          selectedOptions.faith = option;
                          break;
                        case 'Relationship Status':
                          selectedOptions.relationshipStatus = option;
                          break;
                        case 'Smoking':
                          selectedOptions.smoking = option;
                          break;
                        case 'Drinking':
                          selectedOptions.drinking = option;
                          break;
                      }
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    option,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: CustomFont.textFont,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  void showOptionsList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: genderOptions.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(genderOptions[index]),
              onTap: () {
                log('Selected option: ${genderOptions[index]}');
                selectedGenderOtherOption = genderOptions[index];
                if (selectedGenderButton == 'Other') {
                  selectedGenderButton = selectedGenderOtherOption;
                }
                Navigator.of(context).pop();
              },
            );
          },
        );
      },
    );
  }

  Widget buildOptionButton(String label, String selectedValue, IconData icon) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: Colors.black),
      onPressed: () {
        showOptionsDialog(label, getOptions(label));
      },
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          selectedValue.isNotEmpty ? selectedValue : label,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  List<String> getOptions(String category) {
    switch (category) {
      case 'Faith':
        return faithOptions;
      case 'Relationship Status':
        return relationShipOptions;
      case 'Smoking':
        return smokingOptions;
      case 'Drinking':
        return drinkingOptions;
      default:
        return [];
    }
  }
}

class SelectedOptions {
  String faith;
  String relationshipStatus;
  String smoking;
  String drinking;

  SelectedOptions({
    required this.faith,
    required this.drinking,
    required this.relationshipStatus,
    required this.smoking,
  });
}






















//   String? faith;
//   String? relationshipStatus;
//   String? smoking;
//   String? drinking;

//   List<String> faithOptions = CommonLists().faithOptions;
//   List<String> relationShipOptions = CommonLists().relationShipOptions;
//   List<String> smokingOptions = CommonLists().smokingOptions;
//   List<String> drinkingOptions = CommonLists().drinkingOptions;
//   List<String> genderOptions = CommonLists().genderOptions;

//   @override
//   void initState() {
//     super.initState();
//     faith = widget.editProfileDetails.faith!;
//     relationshipStatus = widget.editProfileDetails.relationshipStatus!;
//     smoking = widget.editProfileDetails.smoking!;
//     drinking = widget.editProfileDetails.drinking!;
//   }

//   @override
//   Widget build(BuildContext context) {



//     TextEditingController bioTextController = TextEditingController();

//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: height * 0.1,
//               ),
//               CustomText(
//                 text: 'Gender',
//                 fontsize: 17,
//                 fontFamily: CustomFont.headTextFont,
//                 height: height * 0.06,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   MainCustomButton(
//                     customtext: 'Male',
//                     txtcolor: CustomColors.kWhiteTextColor,
//                     width: width * 0.07,
//                   ),
//                   MainCustomButton(
//                     customtext: 'Female',
//                     width: width * 0.07,
//                     txtcolor: CustomColors.kWhiteTextColor,
//                   ),
//                   MainCustomButton(
//                     width: width * 0.07,
//                     customtext: 'Other',
//                     txtcolor: CustomColors.kWhiteTextColor,
//                     onpressed: () {
//                       showOptionsList(context);
//                     },
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: height * 0.05,
//               ),
//               CustomText(
//                 text: 'Show Me',
//                 fontFamily: CustomFont.headTextFont,
//                 fontsize: 17,
//                 height: height * 0.06,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   MainCustomButton(
//                     customtext: 'Male',
//                     txtcolor: CustomColors.kWhiteTextColor,
//                     width: width * 0.07,
//                   ),
//                   MainCustomButton(
//                     customtext: 'Female',
//                     width: width * 0.07,
//                     txtcolor: CustomColors.kWhiteTextColor,
//                   ),
//                   MainCustomButton(
//                     width: width * 0.07,
//                     customtext: 'Everyone',
//                     txtcolor: CustomColors.kWhiteTextColor,
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: height * 0.05,
//               ),
//               TextField(
//                 controller: bioTextController,
//                 maxLines: 4,
//                 decoration: const InputDecoration(
//                   labelText: ' Your Bio',
//                   hintText: 'Write a short bio...',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(
//                 height: height * 0.07,
//               ),
//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       buildOptionButton(
//                           'Faith', faith!, FontAwesomeIcons.personPraying),
//                       buildOptionButton('Relationship Status',
//                           relationshipStatus!, FontAwesomeIcons.heart),
//                     ],
//                   ),
//                   SizedBox(
//                     height: height * 0.05,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       buildOptionButton(
//                           'Smoking', smoking!, FontAwesomeIcons.smoking),
//                       buildOptionButton(
//                           'Drinking', drinking!, FontAwesomeIcons.wineGlass),
//                     ],
//                   ),
//                   SizedBox(
//                     height: height * 0.03,
//                   ),
//                   MainCustomButton(
//                     customtext: 'Continue',
//                     txtcolor: CustomColors.kWhiteTextColor,
//                     width: width * 0.14,
//                     height: height * 0.015,
//                     onpressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const EditPreviewAccount()),
//                       );
//                     },
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void showOptionsDialog(String category, List<String> options) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return SingleChildScrollView(
//           child: AlertDialog(
//             title: Text(
//               'Select $category',
//               style: const TextStyle(fontFamily: CustomFont.headTextFont),
//             ),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: options.map((option) {
//                 return TextButton(
//                   onPressed: () {
//                     setState(() {
//                       switch (category) {
//                         case 'Faith':
//                           faith = option;
//                           break;
//                         case 'Relationship Status':
//                           relationshipStatus = option;
//                           break;
//                         case 'Smoking':
//                           smoking = option;
//                           break;
//                         case 'Drinking':
//                           drinking = option;
//                           break;
//                       }
//                     });
//                     Navigator.of(context).pop();
//                   },
//                   child: Text(
//                     option,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontFamily: CustomFont.textFont,
//                     ),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void showOptionsList(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return ListView.builder(
//           itemCount: genderOptions.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(genderOptions[index]),
//               onTap: () {
//                 log('Selected option: ${genderOptions[index]}');
//                 Navigator.of(context).pop();
//               },
//             );
//           },
//         );
//       },
//     );
//   }

//   Widget buildOptionButton(String label, String selectedValue, IconData icon) {
//     return ElevatedButton.icon(
//       icon: Icon(
//         icon,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         showOptionsDialog(label, getOptions(label));
//       },
//       label: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Text(
//           selectedValue.isNotEmpty ? selectedValue : label,
//           style: const TextStyle(color: Colors.black),
//         ),
//       ),
//     );
//   }

//   List<String> getOptions(String category) {
//     switch (category) {
//       case 'Faith':
//         return faithOptions;
//       case 'Relationship Status':
//         return relationShipOptions;
//       case 'Smoking':
//         return smokingOptions;
//       case 'Drinking':
//         return drinkingOptions;
//       default:
//         return [];
//     }
//   }
// }
