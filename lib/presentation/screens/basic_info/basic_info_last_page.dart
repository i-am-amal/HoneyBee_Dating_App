import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/presentation/widgets/button_widgets/main_custom_button.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class BasicInfoLastPage extends StatefulWidget {
  const BasicInfoLastPage({super.key});

  @override
  State<BasicInfoLastPage> createState() => _BasicInfoLastPageState();
}

class _BasicInfoLastPageState extends State<BasicInfoLastPage> {
  String faith = '';
  String relationshipStatus = '';
  String smoking = '';
  String drinking = '';
  List<String> faithOptions = [
    'Hindu',
    'Christian',
    'Spiritual',
    'Agnostic',
    'Muslim',
    'Sikh',
    'Atheist',
    'Jain',
    'Buddhist',
    'Bahai',
    'Jewish',
    'Parsi',
    'Other',
    'None',
  ];
  List<String> relationShipOptions = [
    'Single',
    'Single with kid(s)',
    'Married',
    'Widowed',
    'Widowed with kid(s)',
    'Divorced',
    'Divorced with kid(s)',
    'Seperated',
    'Seperated with kid(s)',
  ];
  List<String> smokingOptions = [
    'Yes',
    'No',
    'Planning to quit',
  ];
  List<String> drinkingOptions = [
    'Regular',
    'Socially',
    'Occasionally',
    'Planning to quit',
    'Teetotaler',
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController bioTextController = TextEditingController();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              CustomText(
                text: 'Gender',
                fontsize: 17,
                fontFamily: CustomFont.headTextFont,
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
                    customtext: 'Other',
                    txtcolor: CustomColors.kWhiteTextColor,
                  )
                ],
              ),
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
