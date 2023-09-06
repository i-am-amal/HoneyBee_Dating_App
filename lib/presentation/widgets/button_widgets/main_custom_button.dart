import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class MainCustomButton extends StatelessWidget {
  const MainCustomButton(
      {super.key,
      this.onpressed,
      required this.customtext,
      this.padding,
      this.fontWeight,
      this.fontsize,
      this.fontFamily,
      this.txtcolor,
      this.height,
      this.width,
      this.letterspacing});

  final Function? onpressed;
  final double? padding;
  final String? customtext;
  final FontWeight? fontWeight;
  final double? fontsize;
  final String? fontFamily;
  final Color? txtcolor;
  final double? letterspacing;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(CustomColors.kRedButtonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(5.0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: width ?? 0, vertical: height ?? 0),
        ),
      ),
      onPressed: () {
        if (onpressed != null) {
          onpressed!();
        }
      },
      child: CustomText(
        text: customtext,
        textColor: txtcolor,
        fontWeight: fontWeight,
        fontsize: fontsize,
        letterspacing: letterspacing,
      ),
    );
  }
}
