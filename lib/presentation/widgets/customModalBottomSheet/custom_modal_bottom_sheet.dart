import 'package:flutter/material.dart';

class CustomModalBottomSheet extends StatefulWidget {
  const CustomModalBottomSheet({super.key});

  @override
  State<CustomModalBottomSheet> createState() => _CustomModalBottomSheetState();
}

class _CustomModalBottomSheetState extends State<CustomModalBottomSheet> {
  double selectedAge = 25.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Age'),
          trailing: Text('${selectedAge.toInt()}'),
        ),
        Slider(
          value: selectedAge,
          min: 18,
          max: 100,
          onChanged: (double value) {
            setState(() {
              selectedAge = value;
            });
          },
        ),
        ElevatedButton(
          onPressed: () {
            // Add logic to handle button press
            // log(selectedAge.toInt().toString());

            Navigator.of(context).pop(selectedAge.toInt().toString());
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
