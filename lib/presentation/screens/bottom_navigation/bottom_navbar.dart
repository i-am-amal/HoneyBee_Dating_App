import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/application/all_messages_page/all_messages_bloc.dart';
import 'package:honeybee/application/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/chat_page.dart';
import 'package:honeybee/presentation/screens/discover/discover_page.dart';
import 'package:honeybee/presentation/screens/matches/matches_page.dart';
import 'package:honeybee/presentation/screens/settings_page/setting_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomNavOptions = [
      DiscoverPage(token: token),
      MatchesPage(token: token),
      ChatPage(token: token),
      SettingsPage(token: token),
    ];
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        //--------------->>>-----Event for Fetching the Data for discover page ----->>>------------------------

        BlocProvider.of<DiscoverPageBloc>(context)
            .add(const DiscoverPageEvent.likedAndDislikedUsersData());
        BlocProvider.of<DiscoverPageBloc>(context)
            .add(const DiscoverPageEvent.fetchDiscoverData());
        BlocProvider.of<AllMessagesBloc>(context)
            .add(const AllMessagesEvent.listAllLastMessages());
        BlocProvider.of<AllMessagesBloc>(context)
            .add(const AllMessagesEvent.loadConversationIds());
        return Scaffold(
          body: bottomNavOptions[state.selectedIndex],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: CustomColors.kRedButtonColor,
            height: 60,
            items: const [
              Icon(Icons.style, size: 25, color: Colors.white),
              Icon(FontAwesomeIcons.solidHeart, size: 25, color: Colors.white),
              Icon(FontAwesomeIcons.solidComment,
                  size: 25, color: Colors.white),
              Icon(FontAwesomeIcons.bars, size: 25, color: Colors.white),
            ],
            index: state.selectedIndex,
            onTap: (index) {
              //--------------->>>-----Event for updating the navbar depends on the change----->>>------------------------

              BlocProvider.of<BottomNavigationBloc>(context)
                  .add(BottomNavigationEvent.updateNavbar(index: index));
            },
          ),
        );
      },
    );
  }
}
