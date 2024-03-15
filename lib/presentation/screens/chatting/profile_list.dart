import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_messages_page/all_messages_bloc.dart';
import 'package:honeybee/application/chat_page/chat_page_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/chat_screen.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<MatchesPageBloc>(context)
    //     .add(const MatchesPageEvent.fetchMatchesData());
    BlocProvider.of<AllMessagesBloc>(context)
        .add(const AllMessagesEvent.listAllLastMessages());

    log('building matches page');
    return BlocBuilder<AllMessagesBloc, AllMessagesState>(
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
        } else if (

            state.messageList != null && state.messageList!.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: state.messageList!.length,
              itemBuilder: (BuildContext context, int index) {
                final DateTime dateTime = DateTime.parse(
                        state.messageList![index].updatedAt!.toString())
                    .toLocal();
                String currentTime = DateFormat('hh:mm')
                    .format(dateTime)
                    .toString(); // Format as desired
                log('-------Users---${state.messageList![index].users![1].fullName}--');

                return GestureDetector(
                  onTap: () {

                    // log(state.profile!.profiles![index].conversationId!);

                    // log(state.profile!.profiles![index].id!);

                    // log(state.userId!);
                    // getuserIdFromPrefs();
////////////////////////////////////////////////////
                    // BlocProvider.of<GetAllMessageBloc>(context).add(
                    //   GetAllMessageEvent.getAllMessageOfUser(
                    //       state.userId, state.profile!.profiles![index].id),
                    // );

//'''''''''''''''''''''''''''''''''
                    BlocProvider.of<ChatPageBloc>(context).add(
                        ChatPageEvent.initializeGetAllMessagePage(
                            state.messageList![index].users![0].id,
                            state.messageList![index].users![1].id));

///////////////////////////////////////////////////
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          senderId: state.messageList![index].users![0].id,
                          receiverId: state.messageList![index].users![1].id,
                          conversationId:
                              state.messageList![index].conversationId,
                          profilePic:
                              state.messageList![index].users![1].profilePic,
                          name: state.messageList![index].users![1].fullName,
                        ),

                       
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            state.messageList![index].users![1].profilePic!),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(state.messageList![index].users![1].fullName!),
                          Text(currentTime),
                        ],
                      ),

                      subtitle: Text(state.messageList![index].message!),
                      // onTap: () {
                      //   // Handle tap on message
                      // },
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state.messageList == null || state.messageList!.isEmpty) {
          return Center(
            child: Image.asset(
              'assets/images/no_result.png',
              height: 500,
              width: 500,
            ),
          );
        } else {
          return const Text('No data');
        }
      },
    );
  }
}
