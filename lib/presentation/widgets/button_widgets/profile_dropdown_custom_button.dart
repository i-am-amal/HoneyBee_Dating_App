import 'package:flutter/material.dart';

class ProfileCustomDropDownButton extends StatelessWidget {
  const ProfileCustomDropDownButton({
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
    final List<DropdownMenuItem<String>> items = [
      const DropdownMenuItem<String>(
        value: 'Option 1',
        child: Text('Item 1'),
      ),
      const DropdownMenuItem<String>(
        value: 'Option 2',
        child: Text('Item 2'),
      ),
      const DropdownMenuItem<String>(
        value: 'Option 3',
        child: Text('Item 3'),
      ),
    ];

    return SizedBox(
      width: 250,
      height: 70,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: 'Select an option',
          labelStyle: const TextStyle(color: Colors.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
        ),
        value: null,
        onChanged: (String? value) {
          print(value);
        },
        items: items,
      ),
    );
  }
}
