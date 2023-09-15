import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/screens/matches/profile_grid.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.01,
                ),
                const CustomText(
                  text: 'Matches',
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 25,
                  fontWeight: FontWeight.bold,
                  letterspacing: 1,
                ),
                SizedBox(
                  width: width * 0.35,
                ),
                BorderlineButton(
                  icon: FontAwesomeIcons.solidHeart,
                  color: Colors.red,
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LikedUsersPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const CustomText(
              text:
                  'This is a list of people who have liked you and your matches.',
              fontFamily: CustomFont.headTextFont,
              fontsize: 16,
            ),
            SizedBox(
              height: height * 0.05,
            ),
           const Expanded(
              child:  ProfileGrid(),
            )
          ],
        ),
      ),
    );
  }
}
