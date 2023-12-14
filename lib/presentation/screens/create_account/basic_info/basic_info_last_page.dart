import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/constants/lists.dart';
import 'package:honeybee/presentation/screens/create_account/preview_account/preview_account.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

// ignore: must_be_immutable
class BasicInfoLastPage extends StatefulWidget {
  BasicInfoLastPage(
      {super.key,
      required this.fullName,
      required this.email,
      required this.location,
      required this.phoneNumber,
      required this.birthday,
      required this.profileImage,
      required this.coverImage,
      this.image1,
      this.image2,
      this.image3});

  final String fullName;
  final String location;
  final String email;
  final String phoneNumber;
  final String birthday;
  final File profileImage;
  final File? coverImage;
  File? image1;
  File? image2;
  File? image3;

  @override
  State<BasicInfoLastPage> createState() => _BasicInfoLastPageState();
}

class _BasicInfoLastPageState extends State<BasicInfoLastPage> {
  String faith = '';
  String relationshipStatus = '';
  String smoking = '';
  String drinking = '';

  List<String> faithOptions = CommonLists().faithOptions;
  List<String> relationShipOptions = CommonLists().relationShipOptions;
  List<String> genderOptions = CommonLists().genderOptions;
  List<String> drinkingOptions = CommonLists().drinkingOptions;
  List<String> smokingOptions = CommonLists().smokingOptions;

  @override
  Widget build(BuildContext context) {
    TextEditingController bioTextController = TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    log("${widget.fullName}, ${widget.birthday}, ${widget.coverImage}, ${widget.email}, ${widget.location}, ${widget.phoneNumber}, ${widget.profileImage}, ${widget.image1}, ${widget.image2}, ${widget.image3}");

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              BorderlineButton(
                  icon: Icons.arrow_back_ios_new,
                  onpressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: height * 0.02,
              ),
              CustomText(
                text: 'Gender',
                fontsize: 17,
                fontFamily: CustomFont.headTextFont,
                height: height * 0.06,
              ),


              /////-------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainCustomButton(
                    customtext: 'Male',
                    txtcolor: CustomColors.kWhiteTextColor,
                    width: width * 0.07,
                    onpressed: () {},
                  ),
                  MainCustomButton(
                    customtext: 'Female',
                    width: width * 0.07,
                    txtcolor: CustomColors.kWhiteTextColor,
                  ),
                  MainCustomButton(
                    width: width * 0.07,
                    customtext: 'Other',
                    txtcolor: CustomColors.kWhiteTextColor,
                    onpressed: () {
                      showOptionsList(context);
                    },
                  )
                ],
              ),

              //------------------------->>>>>>>>>>>>>>>>>>>>>>

              SizedBox(
                height: height * 0.05,
              ),
              CustomText(
                text: 'Show Me',
                fontFamily: CustomFont.headTextFont,
                fontsize: 17,
                height: height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainCustomButton(
                    customtext: 'Male',
                    txtcolor: CustomColors.kWhiteTextColor,
                    width: width * 0.07,
                  ),
                  MainCustomButton(
                    customtext: 'Female',
                    width: width * 0.07,
                    txtcolor: CustomColors.kWhiteTextColor,
                  ),
                  MainCustomButton(
                    width: width * 0.07,
                    customtext: 'Everyone',
                    txtcolor: CustomColors.kWhiteTextColor,
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextField(
                controller: bioTextController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: ' Your Bio',
                  hintText: 'Write a short bio...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildOptionButton(
                          'Faith', faith, FontAwesomeIcons.personPraying),
                      buildOptionButton('Relationship Status',
                          relationshipStatus, FontAwesomeIcons.heart),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildOptionButton(
                          'Smoking', smoking, FontAwesomeIcons.smoking),
                      buildOptionButton(
                          'Drinking', drinking, FontAwesomeIcons.wineGlass),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  MainCustomButton(
                    customtext: 'Continue',
                    txtcolor: CustomColors.kWhiteTextColor,
                    width: width * 0.14,
                    height: height * 0.015,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PreviewAccount()),
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
                      switch (category) {
                        case 'Faith':
                          faith = option;
                          break;
                        case 'Relationship Status':
                          relationshipStatus = option;
                          break;
                        case 'Smoking':
                          smoking = option;
                          break;
                        case 'Drinking':
                          drinking = option;
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
      icon: Icon(
        icon,
        color: Colors.black,
      ),
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


//////////---------------------last page customization needed--------------------

/////////////////////////////////----------------------
// class MainCustomButton extends StatelessWidget {
//   // ... existing code ...

//   final bool isSelected;

//   // ... existing code ...

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ButtonStyle(
//         backgroundColor:
//             MaterialStateProperty.all<Color>(isSelected ? Colors.white : CustomColors.kRedButtonColor),
//         // ... other properties ...
//       ),
//       // ... existing code ...
//     );
//   }
// }

////////////////-------------------------------------
///
///
// class ButtonRow extends StatefulWidget {
//   @override
//   _ButtonRowState createState() => _ButtonRowState();
// }

// class _ButtonRowState extends State<ButtonRow> {
//   int selectedButtonIndex = -1; // Initialize to -1 to represent no selection

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         MainCustomButton(
//           customtext: 'Male',
//           isSelected: selectedButtonIndex == 0,
//           // ... other properties ...
//           onpressed: () {
//             setState(() {
//               selectedButtonIndex = 0;
//             });
//           },
//         ),
//         MainCustomButton(
//           customtext: 'Female',
//           isSelected: selectedButtonIndex == 1,
//           // ... other properties ...
//           onpressed: () {
//             setState(() {
//               selectedButtonIndex = 1;
//             });
//           },
//         ),
//         MainCustomButton(
//           customtext: 'Other',
//           isSelected: selectedButtonIndex == 2,
//           // ... other properties ...
//           onpressed: () {
//             showOptionsList(context);
//           },
//         )
//       ],
//     );
//   }

  // ... existing code ...
// }
//////////////////////----------------------------
///

// void showOptionsList(BuildContext context) async {
//   String? selectedOption = await showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return ListView.builder(
//         itemCount: genderOptions.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             title: Text(genderOptions[index]),
//             onTap: () {
//               print('Selected option: ${genderOptions[index]}');
//               Navigator.of(context).pop(genderOptions[index]);
//             },
//           );
//         },
//       );
//     },
//   );

//   if (selectedOption != null) {
//     setState(() {
//       // Update the selected option and button state here
//     });
//   }
// }


/////////////////////------------------


