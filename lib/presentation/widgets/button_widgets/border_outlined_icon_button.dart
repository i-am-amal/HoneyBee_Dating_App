import 'package:flutter/material.dart';

class BorderlineButton extends StatelessWidget {
  const BorderlineButton({
    required this.icon,
    required this.onpressed,
    this.color,
    super.key,
  });

  final IconData icon;
  final Color? color;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          onPressed: onpressed,
          icon: Icon(icon),
          color: color ?? Colors.black,
        ));
  }
}
