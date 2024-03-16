import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_messages_page/all_messages_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/profile_list.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AllMessagesBloc>(context)
        .add(const AllMessagesEvent.listAllLastMessages());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                text: "Let's Chat",
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
          CustomTextFormFiled(
            icon: Icons.search,
            text: 'Search',
            buttonOnTap: () {
              ///---------search event
              ///
              ///
            },
          ),
          const Expanded(
            child: ProfileList(),
          ),
        ],
      ),
    );
  }
}
