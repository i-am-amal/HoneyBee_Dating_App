import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MatchesPageBloc>(context)
        .add(const MatchesPageEvent.fetchMatchesData());
    log('building matches page');
    return BlocBuilder<MatchesPageBloc, MatchesPageState>(
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
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            color: Colors.black.withOpacity(0.5),
                            child: TextButton(
                              child: Text(
                                state.profile!.profiles![index].fullName!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
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
    );
  }
}
