import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/cards_stack_widget.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/screens/search/search_page.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DiscoverPageBloc>(context)
        .add(const DiscoverPageEvent.likedAndDislikedUsersData());
    BlocProvider.of<DiscoverPageBloc>(context)
        .add(const DiscoverPageEvent.joinUserToSocket());

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: width * 0.09),
                const CustomText(
                  text: 'Discover',
                  fontFamily: CustomFont.headTextFont,
                  fontsize: 25,
                  fontWeight: FontWeight.bold,
                  letterspacing: 1,
                ),
                BorderlineButton(
                    icon: Icons.search,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchPage(),
                        ),
                      );
                    })
              ],
            ),
            SizedBox(height: height * 0.03),
            const CardsStackWidget(),
          ],
        ),
      ),
    );
  }
}
