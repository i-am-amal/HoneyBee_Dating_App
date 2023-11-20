import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/constants/lists.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

import '../../widgets/fonts/fonts.dart';
import 'chat_screen.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Message> messages = CommonLists().messages;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.07,
              ),
              const CustomText(
                text: 'Messages',
                fontFamily: CustomFont.headTextFont,
                fontsize: 25,
                fontWeight: FontWeight.bold,
                letterspacing: 1,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.04,
          ),
          const CustomTextFormFiled(
            icon: Icons.search,
            text: 'Search',
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                Message message = messages[index];

                return InkWell(
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return const ChatScreen();
                      },
                    );

                    debugPrint('tapping');
                  },
                  child: Card(
                    // Adjust padding, margin, and decoration as needed
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(message.profilePicUrl),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(message.senderName),
                          Text(message.lastSeenTime),
                        ],
                      ),
                      subtitle: Text(message.lastMessage),
                      // onTap: () {
                      //   // Handle tap on message
                      // },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String senderName;
  final String lastMessage;
  final String profilePicUrl;
  final String lastSeenTime;

  Message({
    required this.senderName,
    required this.lastMessage,
    required this.profilePicUrl,
    required this.lastSeenTime,
  });
}
