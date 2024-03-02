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

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:honeybee/application/basic_info_auth_page/basic_info_auth_bloc.dart';
// import 'package:honeybee/infrastructure/services/camera_services.dart';
// import 'package:image_picker/image_picker.dart';

// Future<dynamic> pickImageModalPopUp(BuildContext context,
//     BasicInfoAuthEvent Function(XFile) imagePickedCallback) {
//   return showCupertinoModalPopup(
//     context: context,
//     builder: (BuildContext context) => CupertinoActionSheet(
//       title: const Text('Choose an option'),
//       actions: <Widget>[
//         CupertinoActionSheetAction(
//           onPressed: () async {
//             XFile? image = await CameraServices.pickImageFromCamera();
//             if (image != null) {
//               BlocProvider.of<BasicInfoAuthBloc>(context)
//                   .add(imagePickedCallback(image));
//             }
//             Navigator.pop(context);
//           },
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const <Widget>[
//               Icon(Icons.camera_alt),
//               SizedBox(width: 8),
//               Text('Camera'),
//             ],
//           ),
//         ),
//         CupertinoActionSheetAction(
//           onPressed: () async {
//             XFile? image = await CameraServices.pickImageFromGallery();
//             if (image != null) {
//               BlocProvider.of<BasicInfoAuthBloc>(context)
//                   .add(imagePickedCallback(image));
//             }
//             Navigator.pop(context);
//           },
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const <Widget>[
//               Icon(Icons.photo),
//               SizedBox(width: 8),
//               Text('Gallery'),
//             ],
//           ),
//         ),
//       ],
//       cancelButton: CupertinoActionSheetAction(
//         child: const Text(
//           'Cancel',
//           style: TextStyle(
//             color: CupertinoColors.systemRed,
//           ),
//         ),
//         onPressed: () {
//           Navigator.pop(context);
//         },
//       ),
//     ),
//   );
// }
