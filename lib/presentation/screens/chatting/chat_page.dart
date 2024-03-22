import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_messages_page/all_messages_bloc.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/profile_list.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key, required this.token});
  final String token;
  final _searchValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AllMessagesBloc>(context)
        .add(const AllMessagesEvent.listAllLastMessages());
    BlocProvider.of<MatchesPageBloc>(context)
        .add(const MatchesPageEvent.fetchMatchesData());

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: height * 0.05),
          Row(
            children: [
              SizedBox(width: width * 0.07),
              const CustomText(
                text: "Let's Chat",
                fontFamily: CustomFont.headTextFont,
                fontsize: 25,
                fontWeight: FontWeight.bold,
                letterspacing: 1,
              ),
            ],
          ),
          SizedBox(height: height * 0.04),
          CustomTextFormFiled(
            icon: Icons.search,
            suffixIcon: Icons.clear_rounded,
            text: 'Search',
            editController: _searchValue,
            buttonTap: () {
              _searchValue.clear();
              FocusScope.of(context).unfocus();
              BlocProvider.of<AllMessagesBloc>(context)
                  .add(const AllMessagesEvent.clearSearchResult());
            },
            buttonOnTap: () {
              FocusScope.of(context).unfocus();
              BlocProvider.of<AllMessagesBloc>(context)
                  .add(AllMessagesEvent.searchResult(_searchValue.text));
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
