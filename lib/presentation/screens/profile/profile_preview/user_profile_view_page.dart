import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class UserProfilePreviewPage extends StatelessWidget {
  const UserProfilePreviewPage({super.key, required this.userDetails});

  final UserModel userDetails;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: BlocBuilder<MatchesPageBloc, MatchesPageState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.05),
                  Row(
                    children: [
                      SizedBox(width: width * 0.05),
                      BorderlineButton(
                          icon: Icons.arrow_back_ios_new,
                          onpressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(width: width * 0.09),
                      const CustomText(
                        text: 'Preview ',
                        fontFamily: CustomFont.headTextFont,
                        fontWeight: FontWeight.bold,
                        fontsize: 20,
                        letterspacing: 1,
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Container(
                    width: width * 0.9,
                    height: height * 0.4,
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
                    child: Image.network(
                      userDetails.profilePic,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.99,
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.05),
                        Row(
                          children: [
                            SizedBox(
                              width: width * 0.1,
                            ),
                            CustomText(
                              text:
                                  '${userDetails.fullName}, ${userDetails.age}',
                              fontFamily: CustomFont.headTextFont,
                              fontsize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        Row(
                          children: [
                            SizedBox(width: width * 0.1),
                            CustomText(
                              text: userDetails.location,
                              fontFamily: CustomFont.headTextFont,
                              fontsize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          children: [
                            SizedBox(width: width * 0.1),
                            Flexible(
                              child: CustomText(
                                text: userDetails.bio,
                                fontFamily: CustomFont.headTextFont,
                                fontsize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChoiceButton(
                                icon: FontAwesomeIcons.person,
                                label: userDetails.gender),
                            ChoiceButton(
                                icon: FontAwesomeIcons.personPraying,
                                label: userDetails.faith),
                          ],
                        ),
                        SizedBox(height: height * 0.03),
                        ChoiceButton(
                            icon: FontAwesomeIcons.heart,
                            label: userDetails.realationshipStatus),
                        SizedBox(height: height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChoiceButton(
                                icon: FontAwesomeIcons.smoking,
                                label: userDetails.smoking),
                            ChoiceButton(
                                icon: FontAwesomeIcons.wineGlass,
                                label: userDetails.drinking),
                          ],
                        ),
                        SizedBox(height: height * 0.05),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height * 0.25,
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
                      child: Image.network(
                        userDetails.coverPic,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: height * 0.2,
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
                                child: userDetails.img1 != null
                                    ? Image.network(
                                        userDetails.img1!,
                                        fit: BoxFit.cover,
                                      )
                                    : const Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Center(
                                          child: Text('No image Available'),
                                        ),
                                      ),
                              ),
                            ),
                            SizedBox(width: width * 0.05),
                            Expanded(
                              child: Container(
                                height: height * 0.2,
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
                                child: userDetails.img2 != null
                                    ? Image.network(
                                        userDetails.img2!,
                                        fit: BoxFit.cover,
                                      )
                                    : const Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Center(
                                          child: Text('No image Available'),
                                        ),
                                      ),
                              ),
                            ),
                            SizedBox(width: width * 0.05),
                            Expanded(
                              child: Container(
                                height: height * 0.2,
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
                                child: userDetails.img3 != null
                                    ? Image.network(
                                        userDetails.img3!,
                                        fit: BoxFit.cover,
                                      )
                                    : const Padding(
                                        padding: EdgeInsets.all(15.0),
                                        child: Center(
                                          child: Text('No image Available'),
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    this.icon,
    required this.label,
    super.key,
  });

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
