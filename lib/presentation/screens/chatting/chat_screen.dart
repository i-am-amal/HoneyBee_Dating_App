import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/chat_page/chat_page_bloc.dart';
import 'package:honeybee/presentation/widgets/button_widgets/border_outlined_icon_button.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen(
      {super.key,
      required this.senderId,
      required this.receiverId,
      required this.conversationId,
      this.profilePic,
      this.name});

  final String? senderId;
  final String? receiverId;
  final String? conversationId;
  final String? profilePic;
  final String? name;

  final TextEditingController messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {


    // BlocProvider.of<ChatPageBloc>(context)
    //     .add(ChatPageEvent.initializeGetAllMessagePage(senderId, receiverId));

    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocBuilder<ChatPageBloc, ChatPageState>(
        builder: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollController.jumpTo(
              _scrollController.position.maxScrollExtent,
            );
          });
          return Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  BorderlineButton(
                      icon: Icons.arrow_back_ios_new,
                      onpressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  if (profilePic != null)
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(profilePic!),
                    )
                  else
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  CustomText(
                    text: name,
                    fontFamily: CustomFont.textFont,
                    fontsize: 20,
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  // BorderlineButton(
                  //     icon: Icons.video_call_rounded, onpressed: () {})
                ],
              ),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: state.messages?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    final date = state.messages!.keys.toList()[index];
                    final messageList = state.messages![date];

                    return Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(date),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          // controller: _scrollController,
                          itemCount: messageList!.length,
                          itemBuilder: (context, index) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ChatMessage(
                                  text: messageList[index].message ?? "",
                                  isMe: messageList[index].fromSelf ?? false,
                                  formattedTime:
                                      messageList[index].formattedTime,
                                )
                              ],
                            );
                          },
                        )
                      ],
                    );

                    ///-----------------------------------------------------------------------------------
                    // GetMessageResponseModel message = state.messages![index];
                    // return ChatMessage(
                    //   text: message.message ?? "",
                    //   isMe: message.fromSelf ?? false,
                    //   formattedTime: message.formattedTime,
                    // );
                    ///----------------------------------------------------------------------------------
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextFormFiled(
                        icon: Icons.emoji_emotions,
                        text: 'Your Message',
                        editController: messageController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {
                          BlocProvider.of<ChatPageBloc>(context).add(
                              ChatPageEvent.newMessage(messageController.text,
                                  senderId, receiverId, conversationId));
                          messageController.clear();
                          _scrollController.jumpTo(
                              _scrollController.position.maxScrollExtent);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isMe;
  final String formattedTime;

  const ChatMessage(
      {super.key,
      required this.text,
      required this.isMe,
      required this.formattedTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            CustomText(
              text: text,
              fontFamily: CustomFont.textFont,
              fontsize: 15,
            ),
            CustomText(
              text: formattedTime,
              fontFamily: CustomFont.textFont,
              fontsize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
