import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/search_page/search_page_bloc.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/profile/user_profile_view_page.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchPageBloc, SearchPageState>(
      builder: (context, state) {
        if (state.isLoading!) {
          return const Center(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Text('no data')

                // LoadingAnimationWidget.discreteCircle(
                //   color: CustomColors.kRedButtonColor,
                //   size: 70,
                // ),
              ],
            ),
          );
        } else if (state.searchResult != null) {
          return Expanded(
            child: ListView.builder(
              itemCount:
                  state.searchResult!.profiles!.length, // Number of users
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          radius: 30, // Adjust size as needed
                          backgroundImage: NetworkImage(
                              state.searchResult!.profiles![index].profilePic!)
                          // AssetImage('assets/images/profile.jpg'),
                          ),

                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          text: state.searchResult!.profiles![index].fullName,
                          fontWeight: FontWeight.bold,
                          fontFamily: CustomFont.textFont,
                        ),
                      ),
                      // Replace with actual user name
                      onTap: () {
                        // Handle tap on user
                        if (state.searchResult != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfilePreviewPage(
                                userDetails: UserModel(
                                    fullName: state.searchResult!
                                        .profiles![index].fullName!,
                                    age: state
                                        .searchResult!.profiles![index].age!,
                                    location: state.searchResult!
                                        .profiles![index].location!,
                                    bio: state
                                        .searchResult!.profiles![index].bio!,
                                    drinking: state.searchResult!
                                        .profiles![index].drinking!,
                                    faith: state
                                        .searchResult!.profiles![index].faith!,
                                    gender: state
                                        .searchResult!.profiles![index].gender!,
                                    profilePic: state.searchResult!
                                        .profiles![index].profilePic!,
                                    realationshipStatus: state.searchResult!
                                        .profiles![index].realationshipStatus!,
                                    smoking: state.searchResult!
                                        .profiles![index].smoking!),
                              ),
                            ),
                          );
                        }

                        log('Tapped on user $index ---${state.searchResult!.profiles![index].fullName}');
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
        } else {
          return const Center(
            child: Text('No data to show'),
          );
        }
      },
    );
  }
}
