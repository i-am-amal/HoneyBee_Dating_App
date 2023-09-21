import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/profile/edit_profile/edit_profile.dart';
import 'package:honeybee/presentation/screens/profile/profile_preview.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const CustomText(
              text: 'Profile',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePreview()),
              );
            },
          ),
          SizedBox(
            height: height * 0.03,
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const CustomText(
              text: 'Edit Profile',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfile()),
              );
            },
          ),
          SizedBox(
            height: height * 0.03,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: CustomText(
              text: 'Logout',
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
