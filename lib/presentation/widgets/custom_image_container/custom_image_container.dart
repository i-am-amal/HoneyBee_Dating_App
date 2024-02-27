import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'package:honeybee/domain/models/edit_profile_model/edit_profile_model.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/pick_image_modal_popup.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class CustomImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final File? image;
  final String imagePath;
  final Function() onCameraPressed;
  final Function() onGalleryPressed;

  const CustomImageContainer({super.key, 
    required this.height,
    required this.width,
    required this.image,
    required this.imagePath,
    required this.onCameraPressed,
    required this.onGalleryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pickImageModalPopUp(context, onCameraPressed, onGalleryPressed);
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
            ? image!.path.startsWith('http')
                ? Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    image!,
                    fit: BoxFit.cover,
                  )
            : const Center(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    '   Optional: Add a picture',
                  ),
                ),
              ),
      ),
    );
  }
}
