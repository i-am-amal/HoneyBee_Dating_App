import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';

Future<dynamic> pickImageModalPopUp(BuildContext context) {
  return showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: const Text('Choose an option'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.camera_alt),
              SizedBox(width: 8),
              Text('Camera'),
            ],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoActionSheetAction(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.photo),
              SizedBox(width: 8),
              Text('Gallery'),
            ],
          ),
          onPressed: () {
            BlocProvider.of<BasicInfoAuthBloc>(context).add(const BasicInfoAuthEvent.pickImage());

            Navigator.pop(context);
          },
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text(
          'Cancel',
          style: TextStyle(
            color: CupertinoColors.systemRed,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
  );
}
