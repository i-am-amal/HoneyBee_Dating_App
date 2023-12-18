import 'package:flutter/material.dart';

class CustomNavigator {
  push(BuildContext context, page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
