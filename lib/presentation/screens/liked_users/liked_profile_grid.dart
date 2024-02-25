import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_liked_users_page/all_liked_users_page_bloc.dart';
import 'package:honeybee/domain/models/user_model/user_model.dart';
import 'package:honeybee/presentation/screens/profile/profile_preview/user_profile_view_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class LikedProfileGrid extends StatelessWidget {
  const LikedProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AllLikedUsersPageBloc>(context)
        .add(const AllLikedUsersPageEvent.fetchLikedUsersData());

    return Scaffold(
      body: BlocBuilder<AllLikedUsersPageBloc, AllLikedUsersPageState>(
        builder: (context, state) {
          if (state.isLoading!) {
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
          } else if (state.profile != null) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  childAspectRatio: 300 / 400,
                ),
                itemCount: state.profile!.profiles!.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      log('entered in on tap of liked profile');
                      log('${state.profile!.profiles![index].images!.isNotEmpty ? state.profile!.profiles![index].images![0] : null}');

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfilePreviewPage(
                            userDetails: UserModel(
                              fullName:
                                  state.profile!.profiles![index].fullName!,
                              age: state.profile!.profiles![index].age!,
                              location:
                                  state.profile!.profiles![index].location!,
                              bio: state.profile!.profiles![index].bio!,
                              drinking:
                                  state.profile!.profiles![index].drinking!,
                              faith: state.profile!.profiles![index].faith!,
                              gender: state.profile!.profiles![index].gender!,
                              profilePic:
                                  state.profile!.profiles![index].profilePic!,
                              realationshipStatus: state.profile!
                                  .profiles![index].realationshipStatus!,
                              smoking: state.profile!.profiles![index].smoking!,
                              coverPic:
                                  state.profile!.profiles![index].coverPic!,
                              ////////////////////////////
                              img1: state.profile!.profiles![index].images!
                                      .isNotEmpty
                                  ? state.profile!.profiles![index].images![0]
                                  : null,
                              img2: state.profile!.profiles![index].images!
                                      .isNotEmpty
                                  ? state.profile!.profiles![index].images![1]
                                  : null,
                              img3: state.profile!.profiles![index].images!
                                      .isNotEmpty
                                  ? state.profile!.profiles![index].images![2]
                                  : null,
                              ///////////////////////////
                            ),
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Colors.red,
                                child: Image.network(
                                  state.profile!.profiles![index].profilePic!,
                                  // 'assets/images/profile.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 35,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 35,
                              color: Colors.black.withOpacity(0.4),
                              child: TextButton(
                                child: const Text(
                                  'Dislike ',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<AllLikedUsersPageBloc>(
                                          context)
                                      .add(AllLikedUsersPageEvent.dislikeEvent(
                                          state.profile!.profiles![index].id));

                                  // BlocProvider.of<AllLikedUsersPageBloc>(
                                  //         context)
                                  //     .add(const AllLikedUsersPageEvent
                                  //         .resyncLikedUsersData());
////////////////////////////////////////////////////////////////////////////////////////////
                                  Future.delayed(const Duration(seconds: 2),
                                      () {
                                    BlocProvider.of<AllLikedUsersPageBloc>(
                                            context)
                                        .add(const AllLikedUsersPageEvent
                                            .fetchLikedUsersData());
                                  });

                                  /////////////////////////////////////////////////////////
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 35,
                              color: Colors.black.withOpacity(0.5),
                              child: TextButton(
                                child: Text(
                                  // 'Block User',

                                  state.profile!.profiles![index]
                                              .blockedUsers ==
                                          null
                                      ? 'Unblock User'
                                      : 'Block User',

                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  if (state.isBlocked == false) {
                                    BlocProvider.of<AllLikedUsersPageBloc>(
                                            context)
                                        .add(AllLikedUsersPageEvent
                                            .blockUserEvent(state
                                                .profile!.profiles![index].id));
                                    // Future.delayed(const Duration(seconds: 4),
                                    //     () {
                                    //   BlocProvider.of<AllLikedUsersPageBloc>(
                                    //           context)
                                    //       .add(const AllLikedUsersPageEvent
                                    //           .fetchLikedUsersData());
                                    // });
                                  } else {
                                    BlocProvider.of<AllLikedUsersPageBloc>(
                                            context)
                                        .add(AllLikedUsersPageEvent
                                            .unBlockUserEvent(state
                                                .profile!.profiles![index].id));
                                    // Future.delayed(const Duration(seconds: 4),
                                    //     () {
                                    //   BlocProvider.of<AllLikedUsersPageBloc>(
                                    //           context)
                                    //       .add(const AllLikedUsersPageEvent
                                    //           .fetchLikedUsersData());
                                    // });
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Center(
              child: Image.asset(
                'assets/images/no_result.png',
                height: 500,
                width: 500,
              ),
            );
          }
        },
      ),
    );
  }
}
