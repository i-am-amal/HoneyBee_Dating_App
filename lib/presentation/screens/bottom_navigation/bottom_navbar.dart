import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/application/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:honeybee/presentation/screens/chatting/chat_page.dart';
import 'package:honeybee/presentation/screens/discover/discover_page.dart';
import 'package:honeybee/presentation/screens/matches/matches_page.dart';
import 'package:honeybee/presentation/screens/profile/menu_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key, this.token});

  final String? token;

  final List<Widget> bottomNavOptions = [
    const DiscoverPage(),
    const MatchesPage(),
    const ChatPage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        log('$token..........from bottomnav');
        return Scaffold(
          body: bottomNavOptions[state.selectedIndex],
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: CustomColors.kRedButtonColor,
            height: 60,
            items: const [
              Icon(
                Icons.style,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                FontAwesomeIcons.solidHeart,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                FontAwesomeIcons.solidComment,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                FontAwesomeIcons.bars,
                size: 25,
                color: Colors.white,
              ),
            ],
            index: state.selectedIndex,
            onTap: (index) {
              BlocProvider.of<BottomNavigationBloc>(context)
                  .add(BottomNavigationEvent.updateNavbar(index: index));
            },
          ),
        );
      },
    );
  }
}
