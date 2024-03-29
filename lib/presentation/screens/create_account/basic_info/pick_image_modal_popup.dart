import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> pickImageModalPopUp(BuildContext context,
    VoidCallback cameraEventCalling, VoidCallback galleryEventCalling) {
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
            cameraEventCalling();
            Navigator.pop(context);
          },
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            galleryEventCalling();
            Navigator.pop(context);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.photo),
              SizedBox(width: 8),
              Text('Gallery'),
            ],
          ),
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
