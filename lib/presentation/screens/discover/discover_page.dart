import 'package:flutter/material.dart';
import 'package:honeybee/presentation/screens/discover/cards_stack_widget/cards_stack_widget.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            const CustomText(
              text: 'Discover',
              fontFamily: CustomFont.headTextFont,
              fontsize: 25,
              fontWeight: FontWeight.bold,
              letterspacing: 1,
            ),
            SizedBox(
              height: height * 0.04,
            ),
            const CardsStackWidget(),
          ],
        ),
      ),
    );
  }
}
