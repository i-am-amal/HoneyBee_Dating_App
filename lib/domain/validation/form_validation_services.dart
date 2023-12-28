import 'dart:developer';
import 'dart:io';

class FormValidationServices {
//--------------->>>-----PhoneNumber Validation----->>>------------------------

  static bool phoneNumberValidation(String? phoneNumber) {
    if (phoneNumber != null &&
        phoneNumber.isNotEmpty &&
        phoneNumber.length == 10) {
      return true;
    }
    return false;
  }

//--------------->>>-----Full Name Validation----->>>------------------------

  static bool fullNameValidation(String? fullName) {
    if (fullName != null && fullName.isNotEmpty && fullName.length >= 3) {
      return true;
    }
    return false;
  }

//--------------->>>-----Email Validation----->>>------------------------

  static bool emailValidation(String? email) {
    if (email != null &&
        email.isNotEmpty &&
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
      return true;
    }
    return false;
  }

  //--------------->>>-----OTP Validation----->>>------------------------

  static bool otpValidation(String? otp) {
    if (otp != null && otp.length == 6 && int.tryParse(otp) != null) {
      return true;
    }
    return false;
  }

//--------------->>>-----Birthday Validation----->>>------------------------

  static bool validateBirthday(String? date) {
    if (date != null) {
      try {
        DateTime parseDate = DateTime.parse(date);
        DateTime currentDate = DateTime.now();

        if (parseDate.isBefore(currentDate)) {
          return true;
        }
      } catch (e) {
        return false;
      }
    }
    return false;
  }
}

//--------------->>>-----Image Validation----->>>------------------------

class ImageValidationService {
  double getImageSize(File selectedImage) {
    final bytes = selectedImage.readAsBytesSync().lengthInBytes;
    final kb = bytes / 1024;
    // final mb = kb / 1024;
    if (kb < 2000.0) {
      log("Image is Less than 5MB");
    } else {
      log("Image is More than 5MB...!!!");
    }
    return kb;
  }
}
