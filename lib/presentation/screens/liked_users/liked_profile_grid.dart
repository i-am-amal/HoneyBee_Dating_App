import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_liked_users_page/all_liked_users_page_bloc.dart';
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
                    onTap: () {},
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
                                child: const Text(
                                  'Block User',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  BlocProvider.of<AllLikedUsersPageBloc>(
                                          context)
                                      .add(
                                          AllLikedUsersPageEvent.blockUserEvent(
                                              state.profile!.profiles![index]
                                                  .id));
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
                'assets/images/noData.json',
                height: 500, // Adjust the height as needed
                width: 500, // Adjust the width as needed
              ),
            );
          }
        },
      ),
    );
  }
}
