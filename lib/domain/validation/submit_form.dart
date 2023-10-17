import 'package:flutter/material.dart';

import 'form_validation_services.dart';

TextEditingController controller = TextEditingController();

bool submitForm(BuildContext context) {
  if (!FormValidationServices.fullNameValidation(controller.text)) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please enter a valid full name (at least 3 characters)'),
    ));
    return false;
  }

  if (!FormValidationServices.emailValidation(controller.text)) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please enter a valid email address'),
    ));
    return false;
  }

  if (!FormValidationServices.validateBirthday(controller.text)) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please enter a valid birthday date'),
    ));
    return false;
  }

  return true;
}
















// import 'package:flutter/material.dart';

// import 'form_validation_services.dart';

// bool submitForm(BuildContext context) {
//     if (!FormValidationServices.fullNameValidation(nameController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid full name (at least 3 characters)'),
//       ));
//       return false;
//     }

//     if (!FormValidationServices.emailValidation(emailController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid email address'),
//       ));
//       return false;
//     }

//     if (!FormValidationServices.phoneNumberValidation(
//         phoneNumberController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid phone number '),
//       ));
//       return false;
//     }

//     if (!FormValidationServices.validateBirthday(dateController.text)) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//         content: Text('Please enter a valid birthday date'),
//       ));
//       return false;
//     }

//     return true;
//   }