import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_messages_page/all_messages_bloc.dart';
import 'package:honeybee/application/chat_page/chat_page_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/chat_screen.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AllMessagesBloc>(context)
        .add(const AllMessagesEvent.listAllLastMessages());

    return BlocBuilder<AllMessagesBloc, AllMessagesState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return Center(
            child: Column(
              children: [
                const SizedBox(height: 250),
                LoadingAnimationWidget.staggeredDotsWave(
                  color: CustomColors.kRedButtonColor,
                  size: 70,
                ),
              ],
            ),
          );
        } else if (state.isSearching == true) {
          if (state.searchResult != null && state.searchResult!.isNotEmpty) {
            return ListView.builder(
              itemCount: state.searchResult!.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<ChatPageBloc>(context).add(
                        ChatPageEvent.initializeGetAllMessagePage(
                            state.userId, state.searchResult![index].id));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                            senderId: state.userId,
                            receiverId: state.searchResult![index].id,
                            conversationId:
                                state.searchResult![index].conversationId,
                            profilePic: state.searchResult![index].profilePic,
                            name: state.searchResult![index].fullName),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            state.searchResult![index].profilePic!),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.searchResult![index].fullName!,
                            style: const TextStyle(
                              fontFamily: CustomFont.headTextFont,
                            ),
                          ),
                        ],
                      ),
                      subtitle: const Text(
                        'Tap to open chat..',
                        style: TextStyle(fontFamily: CustomFont.headTextFont),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Lottie.asset(
                'assets/lotties/no data available  man with lap.json',
                width: 300,
                height: 300,
                animate: true,
                repeat: true,
              ),
            );
          }
        } else if (state.messageList != null && state.messageList!.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: state.messageList!.length,
              itemBuilder: (BuildContext context, int index) {
                final DateTime dateTime = DateTime.parse(
                        state.messageList![index].updatedAt!.toString())
                    .toLocal();
                String currentTime =
                    DateFormat('hh:mm a').format(dateTime).toString();
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<ChatPageBloc>(context).add(
                        ChatPageEvent.initializeGetAllMessagePage(
                            state.userId,
                            state.userId ==
                                    state.messageList![index].users![0].id
                                ? state.messageList![index].users![1].id!
                                : state.messageList![index].users![0].id!));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                            senderId: state.userId,
                            receiverId: state.userId ==
                                    state.messageList![index].users![0].id
                                ? state.messageList![index].users![1].id!
                                : state.messageList![index].users![0].id!,
                            conversationId:
                                state.messageList![index].conversationId,
                            profilePic: state.userId ==
                                    state.messageList![index].users![0].id
                                ? state
                                    .messageList![index].users![1].profilePic!
                                : state
                                    .messageList![index].users![0].profilePic!,
                            name: state.userId ==
                                    state.messageList![index].users![0].id
                                ? state.messageList![index].users![1].fullName!
                                : state
                                    .messageList![index].users![0].fullName!),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(state.userId ==
                                state.messageList![index].users![0].id
                            ? state.messageList![index].users![1].profilePic!
                            : state.messageList![index].users![0].profilePic!),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.userId ==
                                    state.messageList![index].users![0].id
                                ? state.messageList![index].users![1].fullName!
                                : state.messageList![index].users![0].fullName!,
                            style: const TextStyle(
                              fontFamily: CustomFont.headTextFont,
                            ),
                          ),
                          Text(
                            currentTime,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        state.messageList![index].message!.length > 30
                            ? '${state.messageList![index].message!.substring(0, 30)}...'
                            : state.messageList![index].message!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontFamily: CustomFont.headTextFont),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state.messageList == null || state.messageList!.isEmpty) {
          return Center(
            child: Lottie.asset(
              'assets/lotties/no data available  man with lap.json',
              width: 300,
              height: 300,
              animate: true,
              repeat: true,
            ),
          );
        } else {
          return const Center(child: Text('Something went wrong..'));
        }
      },
    );
  }
}
