import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/chat/get_all_message/get_all_message_bloc.dart';
import 'package:honeybee/presentation/widgets/button_widgets/border_outlined_icon_button.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.userId});

  final String userId;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // final TextEditingController _messageController = TextEditingController();
  late IO.Socket socket;

  @override
  void initState() {
    socket = IO.io(
        'http://10.0.2.2:5000',
        // "https://amal.fun",
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build());

    socket.connect();

    socket.emit('add-user', widget.userId);
    socket.emit('getOnlineUsers');
    socket.on('onlineUsersList', (data) {
      log('online user list event called');
    });
    socket.onConnect((data) {
      log('connected------------------------');
    });
    socket.on('add-user', (data) {
      log('---------------------------socket--new user added------');
    });

    socket.on('new-msg', (data) {
      log('new message received------------------------');
    });

    socket.on('msg-recieve', (data) {
      log(' message received------------------------');
    });

    socket.on('getOnlineUsers', (data) {
      log('getting online users------------------------');
    });

    socket.onDisconnect((data) {
      log('disconnected------------------------');
    });

    super.initState();
  }

  @override
  void dispose() {
    socket.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocBuilder<GetAllMessageBloc, GetAllMessageState>(
        builder: (context, state) {
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
                    width: width * 0.1,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  const CustomText(
                    text: 'John Doe',
                    fontFamily: CustomFont.textFont,
                    fontsize: 20,
                  ),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  BorderlineButton(
                      icon: Icons.video_call_rounded, onpressed: () {})
                ],
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ChatMessage(text: 'Hello!', isMe: false),
                    ChatMessage(text: 'Hi there!', isMe: true),
                    ChatMessage(text: 'Hi , how are you?  😄', isMe: false),
                    ChatMessage(text: 'Nice to meet you!', isMe: true),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Expanded(
                        child: CustomTextFormFiled(
                      icon: Icons.emoji_emotions,
                      text: 'Your Message',
                    )),
                    IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {},
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

  const ChatMessage({super.key, required this.text, required this.isMe});

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
          child: CustomText(
            text: text,
            fontFamily: CustomFont.textFont,
            fontsize: 15,
          )),
    );
  }
}
