import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isMe;
  final String formattedTime;

  const ChatMessage({
    Key? key,
    required this.text,
    required this.isMe,
    required this.formattedTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isMe ? Colors.teal[200] : Colors.blue[100],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: CustomText(
              text: text,
              fontFamily: CustomFont.textFont,
              // textColor: isMe ? Colors.white : Colors.black,
              fontsize: 15,
            ),
          ),
          const SizedBox(height: 2),
          CustomText(
            text: formattedTime,
            fontFamily: CustomFont.textFont,
            fontsize: 10,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
