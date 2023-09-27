import 'package:flutter/material.dart';

class CustomNavigator {
  push(BuildContext context, page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
