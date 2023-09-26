import 'package:flutter/material.dart';

import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

import 'liked_profile_grid.dart';

class LikedUsersPage extends StatelessWidget {
  const LikedUsersPage({super.key});

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
                BorderlineButton(
                  icon: Icons.arrow_back_ios_new,
                  color: Colors.black45,
                  onpressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                const CustomText(
                  text: 'Liked Users',
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 25,
                  fontWeight: FontWeight.bold,
                  letterspacing: 1,
                ),
                SizedBox(
                  width: width * 0.35,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const CustomText(
              text: 'This is a list of people who you have liked .',
              fontFamily: CustomFont.headTextFont,
              fontsize: 16,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                child: const LikedProfileGrid(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BorderlineButton extends StatelessWidget {
  const BorderlineButton({
    required this.icon,
    required this.onpressed,
    this.color,
    super.key,
  });

  final IconData icon;
  final Color? color;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: onpressed,
          icon: Icon(icon),
          color: color ?? Colors.black,
        ));
  }
}
