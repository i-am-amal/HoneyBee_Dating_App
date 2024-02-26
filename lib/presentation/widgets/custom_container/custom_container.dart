import 'dart:io';

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.height,
      required this.width,
      this.image,
      this.onTapFunction});

  final double height;
  final double width;
  final File? image;
  final Function? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTapFunction != null) {
          onTapFunction!();
        }
      },
      child: Container(
        height: height * 0.25,
        width: width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: image != null
            ? Image.file(
                image!,
                fit: BoxFit.cover,
              )
            : const Center(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    // '''Add an extra photo if you'd like''',
                    '   Optional: Add a picture',
                    // style: TextStyle(letterSpacing: 0),
                  ),
                ),
              ),
      ),
    );
  }
}
