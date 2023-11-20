import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

import '../../widgets/customModalBottomSheet/custom_modal_bottom_sheet.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderlineButton(
                    icon: Icons.arrow_back_ios_new,
                    onpressed: () {
                      Navigator.pop(context);
                    }),
                BorderlineButton(
                    icon: Icons.tune,
                    onpressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const CustomModalBottomSheet();
                        },
                      );
                    }),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const CustomTextFormFiled(
            text: 'Search',
            icon: Icons.search,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const SearchWidget()
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 30, // Number of users
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 30, // Adjust size as needed
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),

                title: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(
                    text: 'John',
                    fontWeight: FontWeight.bold,
                    fontFamily: CustomFont.textFont,
                  ),
                ),
                // Replace with actual user name
                onTap: () {
                  // Handle tap on user
                  log('Tapped on user $index');
                },
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              )
            ],
          );
        },
      ),
    );
  }
}
