import 'package:flutter/material.dart';
import 'package:honeybee/infrastructure/shared_preferences/shared_prefs.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile.dart';
import 'package:honeybee/presentation/screens/profile/profile_preview/profile_preview.dart';
import 'package:honeybee/presentation/screens/splash_screen/splash_screen.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/policies/privacy.dart';
import 'package:honeybee/presentation/widgets/policies/terms_and_conditions.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: height * 0.07),
            const CustomText(
              text: 'User Hub ',
              fontFamily: CustomFont.headTextFont,
              fontWeight: FontWeight.bold,
              fontsize: 22,
              letterspacing: 1,
            ),
            SizedBox(height: height * 0.05),
            ListTile(
              leading: const Icon(Icons.person),
              title: const CustomText(
                text: 'Profile',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilePreview()),
                );
              },
            ),
            SizedBox(height: height * 0.03),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const CustomText(
                text: 'Edit Profile',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditProfile(token: token)),
                );
              },
            ),
            SizedBox(height: height * 0.03),
            ListTile(
              leading: const Icon(Icons.menu_book_sharp),
              title: const CustomText(
                text: 'Terms & Conditions',
              ),
              onTap: () {
                TermsAndConditions().termsandcondition(context);
              },
            ),
            SizedBox(height: height * 0.02),
            ListTile(
              leading: const Icon(Icons.privacy_tip_rounded),
              title: const CustomText(
                text: 'Privacy policy',
              ),
              onTap: () {
                Privacy().privacy(context);
              },
            ),
            SizedBox(height: height * 0.03),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const CustomText(
                text: 'Logout',
              ),
              onTap: () {
                logoutAlertMethod(context);
              },
            ),
            SizedBox(height: height * 0.1),
            const Text(
              'V: 1.0.0',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Future<void> logoutAlertMethod(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const CustomText(
            text: 'Logout',
            fontFamily: CustomFont.headTextFont,
          ),
          content: const CustomText(
            text: 'Are you sure you want to log out?',
            fontFamily: CustomFont.headTextFont,
          ),
          actions: <Widget>[
            TextButton(
              child: const CustomText(
                text: 'Cancel',
                fontFamily: CustomFont.headTextFont,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const CustomText(
                text: 'Logout',
                fontFamily: CustomFont.headTextFont,
                textColor: CustomColors.kRedButtonColor,
              ),
              onPressed: () {
                removeTokenFromPrefs();
                removeUserIdFromPrefs();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ),
                    (route) => false);
              },
            ),
          ],
        );
      },
    );
  }
}
