import 'dart:io';

class EditProfileModel {
  File? profilePic;
  File? coverPic;
  String? preference;
  String? phone;
  String? age;
  String? bio;
  String? birthday;
  String? drinking;
  String? email;
  String? faith;
  String? fullName;
  String? gender;
  File? image0;
  File? image1;
  File? image2;
  String? location;
  String? relationshipStatus;
  String? smoking;

  EditProfileModel({
    required this.age,
    required this.bio,
    required this.birthday,
    required this.coverPic,
    required this.drinking,
    required this.email,
    required this.faith,
    required this.fullName,
    required this.gender,
    required this.image0,
    required this.image1,
    required this.image2,
    required this.location,
    required this.phone,
    required this.preference,
    required this.profilePic,
    required this.relationshipStatus,
    required this.smoking,
  });
}
