import 'package:flutter/material.dart';





class CustomModalBottomSheet extends StatefulWidget {
  const CustomModalBottomSheet({super.key});

  @override
    State<CustomModalBottomSheet> createState() => _CustomModalBottomSheetState();

}

class _CustomModalBottomSheetState extends State<CustomModalBottomSheet> {
  String selectedOption = 'Faith';
  double selectedAge = 25.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Choose Option'),
          trailing: DropdownButton<String>(
            value: selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
            items: <String>['Faith', 'Relationship', 'Drinking', 'Smoking']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        ListTile(
          title: Text('Search Location'),
          trailing: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add location search logic here
            },
          ),
        ),
        ListTile(
          title: Text('Age'),
          trailing: Text('${selectedAge.toInt()}'),
        ),
        Slider(
          value: selectedAge,
          min: 18,
          max: 60,
          onChanged: (double value) {
            setState(() {
              selectedAge = value;
            });
          },
        ),
        ElevatedButton(
          onPressed: () {
            // Add logic to handle button press
            Navigator.of(context).pop();
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
