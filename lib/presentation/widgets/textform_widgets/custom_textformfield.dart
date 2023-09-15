import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
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
          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1.5, color: Colors.red.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15.0),
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
