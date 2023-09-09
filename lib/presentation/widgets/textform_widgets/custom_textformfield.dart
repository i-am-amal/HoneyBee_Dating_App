import 'package:flutter/material.dart';
import 'package:honeybee/presentation/widgets/constants/colors.dart';

class CutomTextFormFiled extends StatelessWidget {
  const CutomTextFormFiled({
    this.text,
    this.initialValue,
    this.keyboardType,
    this.editController,
    this.onTap,
    this.enable,
    this.icon,
    this.readonly,
    super.key,
  });

  final String? text;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Function? onTap;
  final TextEditingController? editController;
  final bool? enable;
  final IconData? icon;
  final bool? readonly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        enabled: enable,
        controller: editController,
        keyboardType: keyboardType,
        readOnly: readonly ?? false,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: text,
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1, color: CustomColors.kRedButtonColor),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
      ),
    );
  }
}
