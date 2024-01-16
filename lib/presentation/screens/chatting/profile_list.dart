import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/chat/get_all_message/get_all_message_bloc.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';
import 'package:honeybee/presentation/screens/chatting/chat_screen.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MatchesPageBloc>(context)
        .add(const MatchesPageEvent.fetchMatchesData());
    log('building matches page');
    return BlocBuilder<MatchesPageBloc, MatchesPageState>(
      builder: (context, state) {
        log("state.isLoading = ${state.isLoading}");

        if (state.isLoading == true) {
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
        } else if (state.isLoading == false &&
            state.profile!.profiles!.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: state.profile!.profiles!.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    log('logged on on tap');

                    log(state.profile!.profiles![index].conversationId!);

                    log(state.profile!.profiles![index].id!);
                    log(state.userId!);
                    // getuserIdFromPrefs();

                    BlocProvider.of<GetAllMessageBloc>(context).add(
                        GetAllMessageEvent.getAllMessageOfUser(
                            state.userId, '659950df6a562775dbebb7f4'));

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(
                                userId: state.userId!,
                              )

                          //   showCupertinoModalPopup(
                          //   context: context,
                          //   builder: (context) {
                          //     return const ChatScreen();
                          //   },
                          // ),
                          // ChatScreen()

                          ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            state.profile!.profiles![index].profilePic!),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(state.profile!.profiles![index].fullName!),
                          const Text('last time'),
                        ],
                      ),
                      subtitle: const Text('lastMessage'),
                      // onTap: () {
                      //   // Handle tap on message
                      // },
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
              height: 500,
              width: 500,
            ),
          );
        }
      },
    );
  }
}
