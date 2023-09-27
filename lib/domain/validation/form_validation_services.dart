class FormValidationServices {




 static bool phoneNumberValidation(String? phoneNumber) {
    if (phoneNumber != null &&
        phoneNumber.isNotEmpty &&
        phoneNumber.length == 10) {
      return true;
    }
    return false;
  }






}
