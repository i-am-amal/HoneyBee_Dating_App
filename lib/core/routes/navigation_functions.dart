import 'package:flutter/material.dart';

class CustomNavigator {

static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  push(BuildContext context, page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

