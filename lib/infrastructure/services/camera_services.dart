import 'package:image_picker/image_picker.dart';

class CameraServices {
  //--------------->>>-----Pick Image From Camera----->>>------------------------

  static Future<XFile?> pickImageFromCamera() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    return image;
  }

  //--------------->>>-----Pick Image From Gallery----->>>------------------------

  static Future<XFile?> pickImageFromGallery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return image;
  }

}
