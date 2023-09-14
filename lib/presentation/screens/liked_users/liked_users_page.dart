import 'package:flutter/material.dart';

class LikedUsers extends StatelessWidget {
  const LikedUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Liked Users Page')],
      ),
    );
  }
}