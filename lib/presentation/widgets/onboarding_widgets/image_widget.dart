import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    this.imagepath,
    super.key,
  });

  final String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 330,
      decoration: BoxDecoration(
        image: imagepath != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imagepath!),
              )
            : const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/onboarding2.jpg',
                ),
              ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
