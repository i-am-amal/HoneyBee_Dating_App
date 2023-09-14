import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/presentation/screens/chatting/chat_page.dart';
import 'package:honeybee/presentation/screens/discover/discover_page.dart';
import 'package:honeybee/presentation/screens/matches/matches_page.dart';
import 'package:honeybee/presentation/screens/profile/profile_page.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> bottomNavOptions = [
    const DiscoverPage(),
    const MatchesPage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavOptions[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: CustomColors.kRedButtonColor,
        height: 50,
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
            FontAwesomeIcons.solidUser,
            size: 25,
            color: Colors.white,
          ),
        ],
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
