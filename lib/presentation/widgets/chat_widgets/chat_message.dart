import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

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
          color: isMe
              ? const Color.fromARGB(255, 231, 221, 221)
              : Colors.grey[300],
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
