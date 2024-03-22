import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    this.text,
    this.initialValue,
    this.keyboardType,
    this.editController,
    this.onChanged,
    this.enable,
    this.icon,
    this.suffixIcon,
    this.onTap,
    this.readonly,
    this.errorMessage,
    this.buttonTap,
    this.buttonOnTap,
    super.key,
  });

  final String? text;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Function? onChanged;
  final Function? onTap;

  final TextEditingController? editController;
  final bool? enable;
  final IconData? icon;
  final IconData? suffixIcon;

  final bool? readonly;
  final String? errorMessage;
  final Function? buttonOnTap;
  final Function? buttonTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            enabled: enable,
            controller: editController,
            keyboardType: keyboardType,
            readOnly: readonly ?? false,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                  onPressed: () {
                    if (buttonOnTap != null) {
                      buttonOnTap!();
                    }
                  },
                  icon: Icon(icon)),
              suffixIcon: IconButton(
                  onPressed: () {
                    if (buttonTap != null) {
                      buttonTap!();
                    }
                  },
                  icon: Icon(suffixIcon)),
              labelText: text,
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1.5, color: Colors.teal.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(15.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1.5, color: Colors.teal.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            onChanged: (value) {
              if (onChanged != null) {
                onChanged!(value);
              }
            },
            onTap: () {
              if (onTap != null) {
                onTap!();
              }
            },
          ),
          Text(
            errorMessage ?? '',
            style: const TextStyle(
                color: Colors.red, fontStyle: FontStyle.italic, fontSize: 14),
          )
        ],
      ),
    );
  }
}
