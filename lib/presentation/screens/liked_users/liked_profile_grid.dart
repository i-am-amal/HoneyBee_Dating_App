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
                  LoadingAnimationWidget.staggeredDotsWave(
                    color: CustomColors.kRedButtonColor,
                    size: 70,
                  ),
                ],
              ),
            );
          } else if (state.profile != null &&
              state.profile!.profiles!.isNotEmpty) {
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
                              img1: state.profile!.profiles![index].images!
                                      .isNotEmpty
                                  ? state.profile!.profiles![index].images![0]
                                  : null,
                              img2: state.profile!.profiles![index].images!
                                          .length ==
                                      2
                                  ? state.profile!.profiles![index].images![1]
                                  : null,
                              img3: state.profile!.profiles![index].images!
                                          .length ==
                                      3
                                  ? state.profile!.profiles![index].images![2]
                                  : null,
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
                                color: Colors.white,
                                child: Image.network(
                                  state.profile!.profiles![index].profilePic!,
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
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.7),
                                  border:
                                      Border.all(color: Colors.teal, width: 1)),
                              child: TextButton(
                                child: Text(
                                  'Dislike ${state.profile!.profiles![index].fullName}',
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<AllLikedUsersPageBloc>(
                                          context)
                                      .add(AllLikedUsersPageEvent.dislikeEvent(
                                          state.profile!.profiles![index].id));
                                  Future.delayed(const Duration(seconds: 1),
                                      () {
                                    BlocProvider.of<AllLikedUsersPageBloc>(
                                            context)
                                        .add(const AllLikedUsersPageEvent
                                            .fetchLikedUsersData());
                                  });
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.7),
                                  border:
                                      Border.all(color: Colors.teal, width: 1)),
                              height: 35,
                              child: TextButton(
                                child: Text(
                                  state.blockedUserIds != null
                                      ? state.blockedUserIds!.contains(state
                                              .profile!.profiles![index].id)
                                          ? 'Unblock ${state.profile!.profiles![index].fullName}'
                                          : 'Block ${state.profile!.profiles![index].fullName}'
                                      : 'Block ${state.profile!.profiles![index].fullName}',
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
                                  } else {
                                    BlocProvider.of<AllLikedUsersPageBloc>(
                                            context)
                                        .add(AllLikedUsersPageEvent
                                            .unBlockUserEvent(state
                                                .profile!.profiles![index].id));
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
              child: Lottie.asset(
                'assets/lotties/no data available  man with lap.json',
                width: 300,
                height: 250,
                animate: true,
                repeat: true,
              ),
            );
          }
        },
      ),
    );
  }
}
