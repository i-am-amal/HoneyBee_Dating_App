import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/text_widgets/custom_text.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class InterestPageCustomButton extends StatelessWidget {
  const InterestPageCustomButton({
    super.key,
    this.onpressed,
    this.padding,
    this.fontWeight,
    this.fontsize,
    this.fontFamily,
    this.txtcolor,
    this.iconcolor,
    required this.customtext,
    required this.icon,
  });

  final Function? onpressed;
  final double? padding;
  final String? customtext;
  final FontWeight? fontWeight;
  final double? fontsize;
  final String? fontFamily;
  final Color? txtcolor;
  final IconData? icon;
  final Color? iconcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(CustomColors.kRedButtonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(5.0),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
        ),
      ),
      onPressed: () {
        if (onpressed != null) {
          onpressed!();
        }
      },
      icon: Icon(
        icon,
        color: iconcolor,
      ),
      label: CustomText(
        text: customtext,
        textColor: txtcolor,
        fontWeight: fontWeight,
        fontsize: fontsize,
      ),
    );
  }
}
