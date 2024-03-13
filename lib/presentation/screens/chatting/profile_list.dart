import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/chat_page/chat_page_bloc.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/chat_screen.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
                LoadingAnimationWidget.staggeredDotsWave(
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
////////////////////////////////////////////////////
                    // BlocProvider.of<GetAllMessageBloc>(context).add(
                    //   GetAllMessageEvent.getAllMessageOfUser(
                    //       state.userId, state.profile!.profiles![index].id),
                    // );

                    BlocProvider.of<ChatPageBloc>(context).add(
                        ChatPageEvent.initializeGetAllMessagePage(
                            state.userId, state.profile!.profiles![index].id));
///////////////////////////////////////////////////
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          senderId: state.userId,
                          receiverId: state.profile!.profiles![index].id,
                          conversationId:
                              state.profile!.profiles![index].conversationId,
                          profilePic:
                              state.profile!.profiles![index].profilePic,
                          name: state.profile!.profiles![index].fullName!,
                        ),

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
                        backgroundImage: NetworkImage(
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
            child: Image.asset(
              'assets/images/no_result.png',
              height: 500,
              width: 500,
            ),
          );
        }
      },
    );
  }
}
